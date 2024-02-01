#include "program_builder.hpp"
#include "ir/ir.hpp"
#include "loongarch/arch.hpp"
#include "loongarch/inst.hpp"
#include "parser/SyntaxTree.hpp"
#include <algorithm>
#include <cassert>
#include <cstddef>
#include <iterator>
#include <memory>
#include <unordered_map>
#include <variant>
#include <vector>
void LoongArch::ProgramBuilder::visit(ir::ir_reg &node) {
    pass_reg = cur_mapping->transfer_reg(node);
}

void LoongArch::ProgramBuilder::visit(ir::ir_constant &node) {
    auto optional_val = node.init_val;
    if(optional_val.has_value()) {
        auto variant_val = optional_val.value();
        if(std::holds_alternative<int>(variant_val)) {
            int val = std::get<int>(variant_val);
            cur_block->instructions.push_back(std::make_shared<LoongArch::LoadImm>(using_reg, val));
        } else if(std::holds_alternative<float>(variant_val)) {
            float val = std::get<float>(variant_val);
            cur_block->instructions.push_back(std::make_shared<LoongArch::LoadImm>(using_reg, val));
        }
    }
    pass_reg = using_reg;
}

void LoongArch::ProgramBuilder::visit(ir::ir_basicblock &node) 
{
    for(auto & i : node.instructions) {
        auto is_phi = std::dynamic_pointer_cast<ir::phi>(i);
        if(is_phi != nullptr) {
            continue;
        }
        std::vector<std::shared_ptr<ir::ir_reg>> regs;
        for(auto def : i->def_reg()) {
            auto reg = std::dynamic_pointer_cast<ir::ir_reg>(def);
            auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
            if(it != cur_mapping->spill_vec.end())
                regs.push_back(reg);
        }
        for(auto use : i->use_reg()) {
            auto reg = std::dynamic_pointer_cast<ir::ir_reg>(use);
            auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
            if(it != cur_mapping->spill_vec.end())
                regs.push_back(reg);
        }
        assert(regs.size() <= 3);       // 理论上一条LA指令涉及寄存器不会超过3个
        int spill_idx = spill_base;
        for(auto reg : regs) {
            auto tar = Reg{spill_idx++};
            auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
            int idx = std::distance(cur_mapping->spill_vec.begin(), it);
            int offset = cur_func->stack_size - (4 * idx);
            cur_block->instructions.push_back(std::make_shared<LoongArch::ld>(tar, Reg{fp}, -offset, ld::ld_w));
            cur_mapping->spill_mapping[reg->id] = tar;
        }

        i->accept(*this); // ！！由于phi指令已消解，所以phi指令对应的visit方法不用实现，也说明为什么上面判断是phi指令可以使用continue！！

        spill_idx = spill_base;
        for(auto reg :regs) {
            auto tar = Reg{spill_idx++};
            auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
            int idx = std::distance(cur_mapping->spill_vec.begin(), it);
            int offset = cur_func->stack_size - (4 * idx);
            cur_block->instructions.push_back(std::make_shared<LoongArch::st>(tar, Reg{fp}, -offset, st::st_w));
            auto del_it = cur_mapping->spill_mapping.find(reg->id);
            if(del_it != cur_mapping->spill_mapping.end())
                cur_mapping->spill_mapping.erase(del_it);
        }
    }
}

void LoongArch::ProgramBuilder::visit(ir::ir_module &node) { 

    this->prog = std::make_shared<LoongArch::Program>();
    this->cur_mapping = std::make_shared<IrMapping>();

    //可以调用寄存器分配函数进行寄存器分配
    node.reg_allocate(cur_mapping->regn);       // 新增了传入分配起始地址的信息，方便分配

    for(auto & [name,func] : node.usrfuncs){
        this->func_name = name;
        prog->functions.emplace_back(std::make_shared<LoongArch::Function>(name));
        func->accept(*this);
    }
    //后面可以用来处理全局变量，不过这里没有
}

void LoongArch::ProgramBuilder::visit(ir::ir_userfunc &node) {
    
    this->cur_func = prog->functions.back();
    
    this->cur_func->stack_size = 16; //默认为16字节，分别存储$ra和父函数的fp值

    for(auto [ir_reg,backend_reg] : node.regAllocateOut)
    {
        this->cur_mapping->reg_mapping[ir_reg->id] = Reg{backend_reg};
    }

    for(auto reg : node.regSpill) {
        this->cur_mapping->spill_vec.push_back(reg);
    }

    int spill_cnt = node.regSpill.size();
    cur_func->stack_size += spill_cnt * 4;
    
    //处理内存变量

    //build a entry
    cur_func->entry = std::make_shared<LoongArch::Block>(".entry_" + func_name);
    cur_func->blocks.push_back(cur_func->entry);
    prog->block_n++;
    
    //构造函数的进入部分
    this->cur_func->entry->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::addi_d,Reg{sp},Reg{sp},-cur_func->stack_size));  //sp:栈顶指针
    this->cur_func->entry->instructions.push_back(std::make_shared<LoongArch::st>(Reg{ra},Reg{sp},cur_func->stack_size-8,st::st_d));//保存ra//返回地址
    this->cur_func->entry->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::addi_d,Reg{fp},Reg{sp},cur_func->stack_size)); //确定

    
    for(auto & block : node.bbs){
        auto cur_block_name = ".L" + std::to_string(prog->block_n);
        auto backend_block = std::make_shared<LoongArch::Block>(cur_block_name);
        //把entry的终点设定成L0
        if(cur_block_name == ".L1"){
            this->cur_func->entry->instructions.push_back(std::make_shared<LoongArch::Jump>(backend_block.get()));       
        }
        prog->block_n++;
        //确定映射关系
        this->cur_mapping->blockmapping[block] = backend_block;
        this->cur_mapping->rev_blockmapping[backend_block] = block;

        cur_func->blocks.push_back(backend_block);
    }

    //在遍历block的过程中，可能会牵扯到下一个block
    for(int i = 0; i < cur_func->blocks.size(); ++i){
        if(cur_func->blocks[i] != cur_func->entry){
            this->cur_block = cur_func->blocks[i];
            if(i < cur_func->blocks.size() - 1) this->next_block = cur_func->blocks[i+1];
            else this->next_block = nullptr;
            this->cur_mapping->rev_blockmapping[cur_func->blocks[i]]->accept(*this);
        }
    }

    //消解phi指令
    struct PendingMove {
        std::shared_ptr<LoongArch::Block> block;
        std::shared_ptr<ir::ir_reg> to;
        LoongArch::Reg from;
    };

    std::vector<PendingMove> Pending_moves;
    for(auto &bb : node.bbs){
        for(auto &inst : bb->instructions){
            if(auto *cur = dynamic_cast<ir::phi*>(inst.get())){
                for(auto &prev : cur->uses){
                    auto b = cur_mapping->blockmapping[prev.second];
                    std::shared_ptr<ir::ir_reg> use_reg = std::dynamic_pointer_cast<ir::ir_reg>(prev.first);
                    if(use_reg) {

                        int spill_idx = spill_base;
                        std::vector<std::shared_ptr<ir::ir_reg>> regs;
                        regs.push_back(use_reg);
                        regs.push_back(cur->dst);
                        for(auto reg : regs) {
                            auto tar = Reg{spill_idx++};
                            auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
                            if(it != cur_mapping->spill_vec.end()) {
                                int idx = std::distance(cur_mapping->spill_vec.begin(), it);
                                int offset = cur_func->stack_size - (4 * idx);
                                cur_block->instructions.push_back(std::make_shared<LoongArch::ld>(tar, Reg{fp}, -offset, ld::ld_w));
                                cur_mapping->spill_mapping[reg->id] = tar;
                            }
                        }

                        Reg temp = cur_mapping->transfer_reg(*use_reg.get());
                        // Reg mid = cur_mapping->new_reg();
                        auto mid = const_reg_l;
                        b->insert_before_jump(
                            std::make_shared<RegImmInst>(RegImmInst::addi_w,mid,temp,0)
                        );
                        Pending_moves.push_back({b,cur->dst,mid});

                        spill_idx = spill_base;
                        for(auto reg :regs) {
                            auto tar = Reg{spill_idx++};
                            auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
                            if(it != cur_mapping->spill_vec.end()) {
                                int idx = std::distance(cur_mapping->spill_vec.begin(), it);
                                int offset = cur_func->stack_size - (4 * idx);
                                cur_block->instructions.push_back(std::make_shared<LoongArch::st>(tar, Reg{fp}, -offset, st::st_w));
                                auto del_it = cur_mapping->spill_mapping.find(reg->id);
                                if(del_it != cur_mapping->spill_mapping.end())
                                    cur_mapping->spill_mapping.erase(del_it);
                            }
                        }

                    }else{
                        std::shared_ptr<ir::ir_constant> use_constant = std::dynamic_pointer_cast<ir::ir_constant>(prev.first);
                        //直接把那个立即数放到相应的phi的目的寄存器里面就行了，在uses block的的jump的前一句
                        //这里直接使用LoongArch的加载立即数指令
                        auto value = use_constant->init_val.value();
                        // auto mid = cur_mapping->new_reg();
                        auto mid = const_reg_l;
                        if(std::holds_alternative<int>(value)){
                            int value_num = std::get<int>(value);
                            b->insert_before_jump(
                                std::make_shared<LoongArch::LoadImm>(mid,value_num)
                            );
                        }

                        int spill_idx = spill_base;
                        std::vector<std::shared_ptr<ir::ir_reg>> regs;
                        regs.push_back(cur->dst);
                        for(auto reg : regs) {
                            auto tar = Reg{spill_idx++};
                            auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
                            if(it != cur_mapping->spill_vec.end()) {
                                int idx = std::distance(cur_mapping->spill_vec.begin(), it);
                                int offset = cur_func->stack_size - (4 * idx);
                                cur_block->instructions.push_back(std::make_shared<LoongArch::ld>(tar, Reg{fp}, -offset, ld::ld_w));
                                cur_mapping->spill_mapping[reg->id] = tar;
                            }
                        }

                        Pending_moves.push_back({b,cur->dst,mid});

                        spill_idx = spill_base;
                        for(auto reg :regs) {
                            auto tar = Reg{spill_idx++};
                            auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
                            if(it != cur_mapping->spill_vec.end()) {
                                int idx = std::distance(cur_mapping->spill_vec.begin(), it);
                                int offset = cur_func->stack_size - (4 * idx);
                                cur_block->instructions.push_back(std::make_shared<LoongArch::st>(tar, Reg{fp}, -offset, st::st_w));
                                auto del_it = cur_mapping->spill_mapping.find(reg->id);
                                if(del_it != cur_mapping->spill_mapping.end())
                                    cur_mapping->spill_mapping.erase(del_it);
                            }
                        }
                    }

                }
            }
        }
    }
    for(auto &i : Pending_moves){
        int spill_idx = spill_base;
        std::vector<std::shared_ptr<ir::ir_reg>> regs;
        regs.push_back(i.to);
        for(auto reg : regs) {
            auto tar = Reg{spill_idx++};
            auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
            if(it != cur_mapping->spill_vec.end()) {
                int idx = std::distance(cur_mapping->spill_vec.begin(), it);
                int offset = cur_func->stack_size - (4 * idx);
                i.block->insert_before_jump(std::make_shared<LoongArch::ld>(tar, Reg{fp}, -offset, ld::ld_w));
                cur_mapping->spill_mapping[reg->id] = tar;
            }
        }

        i.block->insert_before_jump(std::make_shared<RegImmInst>(RegImmInst::addi_w, cur_mapping->transfer_reg(*i.to.get()), i.from, 0)); //插入一条move指令
        cur_func->regn = cur_mapping->regn;

        spill_idx = spill_base;
        for(auto reg :regs) {
            reg->accept(*this);
            auto tar = Reg{spill_idx++};
            auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
            if(it != cur_mapping->spill_vec.end()) {
                int idx = std::distance(cur_mapping->spill_vec.begin(), it);
                int offset = cur_func->stack_size - (4 * idx);
                i.block->insert_before_jump(std::make_shared<LoongArch::st>(tar, Reg{fp}, -offset, st::st_w));
                auto del_it = cur_mapping->spill_mapping.find(reg->id);
                if(del_it != cur_mapping->spill_mapping.end())
                    cur_mapping->spill_mapping.erase(del_it);
            }
        }
    }
}

void LoongArch::ProgramBuilder::visit(ir::store &node) {
    node.addr->accept(*this);
    Reg reg = pass_reg;
    using_reg = const_reg_l;
    node.value->accept(*this);
    Reg dst = pass_reg;
    cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(RegRegInst::add_w, reg, Reg{0}, dst));
    // // auto reg_id = std::dynamic_pointer_cast<ir::ir_reg>(node.addr)->id;
    // auto ir_r = std::dynamic_pointer_cast<ir::ir_reg>(node.addr);
    // // auto reg = this->cur_mapping->reg_mapping[reg_id];
    // auto reg = this->cur_mapping->transfer_reg(*ir_r.get());
    // // auto offset = node.value;
    // auto constant = std::dynamic_pointer_cast<ir::ir_constant>(node.value);
    // if(constant != nullptr) {
    //     auto optional_val = constant->init_val;
    //     if(optional_val.has_value()) {
    //         auto variant_val = optional_val.value();
    //         if(std::holds_alternative<int>(variant_val)) {
    //             int val = std::get<int>(variant_val);
    //             cur_block->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::addi_w, reg, Reg{0}, val));
    //         } else if(std::holds_alternative<float>(variant_val)) {
    //             float val = std::get<float>(variant_val);
    //             cur_block->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::addi_w, reg, Reg{0}, val));
    //         }
    //         // cur_block->instructions.push_back(std::make_shared<LoongArch::st>(Reg{reg}, Reg{fp}, this->cur_mapping->objoffset_mapping, st::st_w)); // TODO：添加区分字长逻辑
    //     }
    //     // cur_block->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::addi_w, Reg{reg}, Reg{0}, value));
    // }
    // else {
    //     auto val_r = std::dynamic_pointer_cast<ir::ir_reg>(node.value);
    //     auto val = cur_mapping->transfer_reg(*val_r.get());
    //     cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(RegRegInst::add_w, reg, Reg{0}, val));
    // }
}

void LoongArch::ProgramBuilder::visit(ir::jump &node) {
    auto tar_b = node.target;
    auto target = cur_mapping->blockmapping[tar_b];
    // target->insert_before_jump(std::make_shared<ir::load>(Args &&args...))
    cur_block->instructions.push_back(std::make_shared<LoongArch::Jump>(target.get()));
}

void LoongArch::ProgramBuilder::visit(ir::br &node) {
    node.use_reg()[0]->accept(*this);
    Reg cond = pass_reg;
    auto target_true = cur_mapping->blockmapping[node.get_target_true()];
    auto target_false = cur_mapping->blockmapping[node.get_target_false()];
    cur_block->instructions.push_back(std::make_shared<LoongArch::Br>(Br::bnez, cond, target_true.get()));
    cur_block->instructions.push_back(std::make_shared<LoongArch::Jump>(target_false.get()));
}

void LoongArch::ProgramBuilder::visit(ir::ret &node) {
    node.value->accept(*this);
    Reg backend_reg = pass_reg;
    cur_block->instructions.push_back(
        std::make_shared<LoongArch::RegRegInst>(RegRegInst::orw,Reg{4},backend_reg,Reg{0})
    );
    cur_block->instructions.push_back(
        std::make_shared<LoongArch::ld>(Reg{22},Reg{3},this->cur_func->stack_size - 8,ld::ld_d)
    );
    cur_block->instructions.push_back(
        std::make_shared<LoongArch::RegImmInst>(RegImmInst::addi_d,Reg{sp},Reg{sp},cur_func->stack_size)
    );
    cur_block->instructions.push_back(std::make_shared<LoongArch::jr>(true));
}

void LoongArch::ProgramBuilder::visit(ir::load &node) {
    node.addr->accept(*this);
    Reg src = pass_reg;
    node.dst->accept(*this);
    Reg dst = pass_reg;
    cur_block->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::addi_w, dst, src, 0));
}

void LoongArch::ProgramBuilder::visit(ir::alloc &node) {
// auto regs = node.def_reg();
// for(auto reg : regs) {
        // auto id = std::dynamic_pointer_cast<ir::ir_reg>(reg)->id;
        // cur_mapping->reg_mapping[id] = cur_mapping->new_reg();
// auto ir_r = std::dynamic_pointer_cast<ir::ir_reg>(reg);
        // cur_mapping->transfer_reg(*ir_r.get());              /*有映射就不用啦*/
// }
    // auto reg = this->cur_mapping->regn;
    // auto value = this->cur_mapping.
    // cur_block->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::addi_w, Reg{reg}, Reg{0},));
}

void LoongArch::ProgramBuilder::visit(ir::phi &node) {                  // 上方已经消解了phi指令
    // auto src = node.use_reg();
    // auto dst_r = node.dst;
    // auto dst = cur_mapping->transfer_reg(*dst_r.get());
    // for(auto item_v : src) {
    //     auto item = cur_mapping->transfer_reg(*(std::dynamic_pointer_cast<ir::ir_reg>(item_v)).get());
    //     // cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(RegRegInst::sub_w, dst, item, dst));
    // }
}

void LoongArch::ProgramBuilder::visit(ir::unary_op_ins &node) {
    node.def_reg()[0]->accept(*this);
    Reg dst = pass_reg;
    using_reg = const_reg_l;
    node.use_reg()[0]->accept(*this);
    Reg src = pass_reg;                                                                                            // Reg：物理寄存器
    if(node.op == unaryop::minus) {                                                                     // 当op为“-”（取反指令）
        auto negative = const_reg_r;
        cur_block->instructions.push_back(std::make_shared<LoongArch::LoadImm>(negative, -1));
        cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(RegRegInst::mul_w, dst, src, negative));
    }
    else if(node.op == unaryop::plus) {                                                                 // 当op为“+”（符号不变）
        cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(RegRegInst::add_w, dst, Reg{0}, src));
    }
    else if(node.op == unaryop::op_not) {                                                               // 当op为布尔非
        cur_block->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::xori, dst, src, true)); // （xori是我自己加的）
    }
}

void LoongArch::ProgramBuilder::visit(ir::binary_op_ins &node) {
    std::unordered_map<binop, RegRegInst::Type> map = {
        {binop::plus, RegRegInst::add_w}, 
        {binop::minus, RegRegInst::sub_w}, 
        {binop::multiply, RegRegInst::mul_w},
        {binop::divide, RegRegInst::div_w},
        {binop::modulo, RegRegInst::mod_w}
    };
    auto type = map[node.op];
    auto tar_r = std::dynamic_pointer_cast<ir::ir_reg>(node.dst);
    node.dst->accept(*this);
    Reg tar = pass_reg;
    using_reg = const_reg_r;
    node.src1->accept(*this);
    Reg exp1 = pass_reg;
    using_reg = const_reg_r;
    node.src2->accept(*this);
    Reg exp2 = pass_reg;
    cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(type, tar, exp1, exp2));
}

void LoongArch::ProgramBuilder::visit(ir::cmp_ins &node) {
    node.def_reg()[0]->accept(*this);
    Reg dst = pass_reg;
    auto exps = node.use_reg();
    using_reg = const_reg_l;
    exps[0]->accept(*this);
    Reg exp1 = pass_reg;
    using_reg = const_reg_r;
    exps[1]->accept(*this);
    Reg exp2 = pass_reg;
    if(node.op == relop::equal || node.op == relop::non_equal) {
        cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(RegRegInst::sub_w, dst, exp1, exp2));
        cur_block->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::sltui, dst, dst, 1));
        if(node.op == relop::non_equal) {
            cur_block->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::xori, dst, dst, 1));
        }
    }
    else if (node.op == relop::greater) {
        cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(RegRegInst::slt, dst, exp2, exp1));
    }
    else if (node.op == relop::greater_equal) {
        cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(RegRegInst::slt, dst, exp1, exp2));
        cur_block->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::xori, dst, dst, 1));
    }
    else if (node.op == relop::less) {
        cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(RegRegInst::slt, dst, exp1, exp2));
    }
    else if (node.op == relop::less_equal) {
        cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(RegRegInst::slt, dst, exp2, exp1));
        cur_block->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::xori, dst, exp1, 1));
    }
}

void LoongArch::ProgramBuilder::visit(ir::logic_ins &node) {
    auto dst = cur_mapping->transfer_reg(*std::dynamic_pointer_cast<ir::ir_reg>(node.def_reg()[0]).get());
    auto srcs = node.use_reg();
    using_reg = const_reg_l;
    srcs[0]->accept(*this);
    Reg src1 = pass_reg;
    using_reg = const_reg_r;
    srcs[1]->accept(*this);
    Reg src2 = pass_reg;
    if(node.op == relop::op_and) {
        cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(RegRegInst::andw, dst, src1, src2));
    } else if(node.op == relop::op_or) {
        cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(RegRegInst::orw, dst, src1, src2));
    }
}

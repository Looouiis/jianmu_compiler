#include "program_builder.hpp"
#include "ir/ir.hpp"
#include "loongarch/arch.hpp"
#include "loongarch/code_gen.hpp"
#include "loongarch/inst.hpp"
#include "parser/SyntaxTree.hpp"
#include <algorithm>
#include <bitset>
#include <cassert>
#include <cstddef>
#include <iomanip>
#include <iterator>
#include <memory>
#include <unordered_map>
#include <variant>
#include <vector>
bool flag = true;

void LoongArch::ProgramBuilder::check_write_back(LoongArch::Reg tar) {
    auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), tar.ir_id);
    if(it != cur_mapping->spill_vec.end()) {
        int idx = std::distance(cur_mapping->spill_vec.begin(), it);
        int offset = cur_func->stack_size - (4 * idx);
        cur_block->instructions.push_back(std::make_shared<LoongArch::st>(tar, Reg{fp}, -offset, tar.is_float() ? st::fst_f : st::st_w));
    }
}

void LoongArch::ProgramBuilder::visit(ir::ir_reg &node) {
    auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), node.id);
    if(it != cur_mapping->spill_vec.end()) {
        Reg tar;
        if(node.get_type() == vartype::FLOAT || node.get_type() == vartype::FLOATADDR) {
            tar.type = FLOAT;
        }
        else {
            tar.type = INT;
        }
        tar.ir_id = node.id;
        if(is_dst) {
            is_dst = false;
            tar.id = spill_dst.id;
            pass_reg = tar;
            return;
        }
        else {
            if(flag) {
                tar.id = spill_use_1.id;
            }
            else {
                tar.id = spill_use_2.id;
            }
            flag = !flag;
        }
        int idx = std::distance(cur_mapping->spill_vec.begin(), it);
        int offset = cur_func->stack_size - (4 * idx);
        cur_block->instructions.push_back(std::make_shared<LoongArch::ld>(tar, Reg{fp}, -offset, tar.is_float() ? ld::fld_f : ld::ld_w));
        pass_reg = tar;
    }
    else {
        pass_reg = cur_mapping->transfer_reg(node);
    }
}

void LoongArch::ProgramBuilder::visit(ir::ir_constant &node) {
    auto optional_val = node.init_val;
    if(node.get_type() == vartype::FLOAT || node.get_type() == vartype::FLOATADDR) {
        using_reg.type = FLOAT;
    }
    else {
        using_reg.type = INT;
    }
    if(optional_val.has_value()) {
        auto variant_val = optional_val.value();
        if(std::holds_alternative<int>(variant_val)) {
            int val = std::get<int>(variant_val);
            cur_block->instructions.push_back(std::make_shared<LoongArch::LoadImm>(using_reg, val));
        } else if(std::holds_alternative<float>(variant_val)) {
            float val = std::get<float>(variant_val);
            Reg middle_reg{using_reg.id};
            cur_block->instructions.push_back(std::make_shared<LoongArch::LoadFloat>(middle_reg, prog->float_nums.size()));
            cur_block->instructions.push_back(std::make_shared<LoongArch::ld>(using_reg, middle_reg, 0, ld::fld_f));
            // double double_num = static_cast<double>(val);
            std::bitset<32> bits(*reinterpret_cast<unsigned int*>(&val));
            std::stringstream ss;
            ss << std::hex << std::setw(8) << std::setfill('0') << bits.to_ulong();
            prog->float_nums.push_back("0x" + ss.str());
        }
    }
    pass_reg = using_reg;
}

void LoongArch::ProgramBuilder::visit(ir::ir_basicblock &node) 
{
    for(auto & i : node.instructions) {
        // auto is_phi = std::dynamic_pointer_cast<ir::phi>(i);
        // if(is_phi != nullptr) {
        //     continue;
        // }
        // std::vector<std::shared_ptr<ir::ir_reg>> regs;
        // for(auto def : i->def_reg()) {
        //     auto reg = std::dynamic_pointer_cast<ir::ir_reg>(def);
        //     auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
        //     if(it != cur_mapping->spill_vec.end())
        //         regs.push_back(reg);
        // }
        // for(auto use : i->use_reg()) {
        //     auto reg = std::dynamic_pointer_cast<ir::ir_reg>(use);
        //     auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
        //     if(it != cur_mapping->spill_vec.end())
        //         regs.push_back(reg);
        // }
        // assert(regs.size() <= 3);       // 理论上一条LA指令涉及寄存器不会超过3个
        // int spill_idx = spill_base;
        // for(auto reg : regs) {
        //     auto tar = Reg{spill_idx++};
        //     auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
        //     int idx = std::distance(cur_mapping->spill_vec.begin(), it);
        //     int offset = cur_func->stack_size - (4 * idx);
        //     cur_block->instructions.push_back(std::make_shared<LoongArch::ld>(tar, Reg{fp}, -offset, ld::ld_w));
        //     cur_mapping->spill_mapping[reg->id] = tar;
        // }

        i->accept(*this); // ！！由于phi指令已消解，所以phi指令对应的visit方法不用实现，也说明为什么上面判断是phi指令可以使用continue！！

        // spill_idx = spill_base;
        // for(auto def : i->def_reg()) {
        //     auto reg = std::dynamic_pointer_cast<ir::ir_reg>(def);
        //     auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
        //     if(it != cur_mapping->spill_vec.end())
        //         regs.push_back(reg);
        // }
        // for(auto reg : regs) {
        //     auto tar = spill_dst;
        //     auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
        //     int idx = std::distance(cur_mapping->spill_vec.begin(), it);
        //     int offset = cur_func->stack_size - (4 * idx);
        //     cur_block->instructions.push_back(std::make_shared<LoongArch::st>(tar, Reg{fp}, -offset, st::st_w));
        //     // auto del_it = cur_mapping->spill_mapping.find(reg->id);
        //     // if(del_it != cur_mapping->spill_mapping.end())
        //         // cur_mapping->spill_mapping.erase(del_it);
        // }
        // for(auto reg :regs) {
        //     auto tar = Reg{spill_idx++};
        //     auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
        //     int idx = std::distance(cur_mapping->spill_vec.begin(), it);
        //     int offset = cur_func->stack_size - (4 * idx);
        //     cur_block->instructions.push_back(std::make_shared<LoongArch::st>(tar, Reg{fp}, -offset, st::st_w));
        //     auto del_it = cur_mapping->spill_mapping.find(reg->id);
        //     if(del_it != cur_mapping->spill_mapping.end())
        //         cur_mapping->spill_mapping.erase(del_it);
        // }
    }
}

void LoongArch::ProgramBuilder::visit(ir::ir_module &node) { 

    this->prog = std::make_shared<LoongArch::Program>();
    this->cur_mapping = std::make_shared<IrMapping>();

    for(auto & [name, global] : node.global_var) {
        prog->global_var.push_back(global);
    }

    //可以调用寄存器分配函数进行寄存器分配
    node.reg_allocate(cur_mapping->regn, prog->global_var);       // 新增了传入分配起始地址的信息，方便分配

    for(auto & [name, func] : node.libfuncs) {
        prog->lib_funcs.push_back(std::make_shared<LoongArch::Function>(name));
    }

    if(node.init_block) {
        this->func_name = node.global_init_func->name;
        prog->functions.emplace_back(std::make_shared<LoongArch::Function>(node.global_init_func->name));
        node.global_init_func->accept(*this);
    }

    for(auto & [name,func] : node.usrfuncs){
        this->func_name = name;
        prog->functions.emplace_back(std::make_shared<LoongArch::Function>(name));
        this->cur_mapping = std::make_shared<IrMapping>();
        func->accept(*this);
    }
    //后面可以用来处理全局变量，不过这里没有
}

void LoongArch::ProgramBuilder::visit(ir::ir_userfunc &node) {
    
    this->cur_func = prog->functions.back();
    
    this->cur_func->stack_size = 16; //默认为16字节，分别存储$ra和父函数的fp值

    for(auto [ir_reg,backend_reg] : node.regAllocateOut)
    {
        this->cur_mapping->reg_mapping[ir_reg->id] = backend_reg;
    }

    for(auto reg : node.regSpill) {
        this->cur_mapping->spill_vec.push_back(reg->id);
        this->cur_mapping->used_mem += reg->size;
    }
    
    for(auto obj : node.arrobj) {
        this->cur_mapping->mem_var.insert({obj->addr->id, this->cur_mapping->used_mem});
        int total_cnt = obj->addr->size;
        if(obj->dim) {
            for(auto a : obj->dim->dimensions) {
                total_cnt *= a->calc_res();
            }
        }
        this->cur_mapping->used_mem += total_cnt; 
    }

    // int spill_cnt = node.regSpill.size();
    // cur_func->stack_size += spill_cnt * 4;
    cur_func->stack_size += this->cur_mapping->used_mem;
    
    //处理内存变量

    //build a entry
    cur_func->entry = std::make_shared<LoongArch::Block>(".entry_" + func_name);
    cur_func->blocks.push_back(cur_func->entry);
    prog->block_n++;
    
    //构造函数的进入部分
    this->cur_func->entry->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::addi_d,Reg{sp},Reg{sp},-cur_func->stack_size));  //sp:栈顶指针
    this->cur_func->entry->instructions.push_back(std::make_shared<LoongArch::st>(Reg{ra},Reg{sp},cur_func->stack_size-8,st::st_d));//保存ra//返回地址
    this->cur_func->entry->instructions.push_back(std::make_shared<LoongArch::st>(Reg{fp},Reg{sp},cur_func->stack_size - 16,st::st_d));//保存ra//返回地址
    this->cur_func->entry->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::addi_d,Reg{fp},Reg{sp},cur_func->stack_size)); //确定
    // int pointer = 4 + node.func_args.size();
    vector<Reg> f_par_reg;
    vector<Reg> i_par_reg;
    for(auto arg : node.func_args) {
        is_dst = true;
        arg->addr->accept(*this);
        auto reg = pass_reg;
        if(reg.is_float()) {
            f_par_reg.push_back(reg);
        }
        else {
            i_par_reg.push_back(reg);
        }
        // cur_func->entry->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(RegRegInst::add_d, reg, Reg{--pointer}, Reg{0}));
        // check_write_back(reg);
    }
    int i_pointer = 4;
    int f_pointer = 0;
    for(auto reg : i_par_reg) {
        cur_func->entry->instructions.push_back(std::make_shared<RegRegInst>(RegRegInst::add_d, reg, Reg{i_pointer++}, Reg{0}));
        check_write_back(reg);
    }
    for(auto reg : f_par_reg) {
        cur_func->entry->instructions.push_back(std::make_shared<LoongArch::mov>(reg, Reg{f_pointer++, Rtype::FLOAT}, mov::ftf_f));
        check_write_back(reg);
    }

    
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

                        // int spill_idx = spill_base;
                        // std::vector<std::shared_ptr<ir::ir_reg>> regs;
                        // regs.push_back(use_reg);
                        // regs.push_back(cur->dst);
                        // for(auto reg : regs) {
                        //     auto tar = Reg{spill_idx++};
                        //     auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
                        //     if(it != cur_mapping->spill_vec.end()) {
                        //         int idx = std::distance(cur_mapping->spill_vec.begin(), it);
                        //         int offset = cur_func->stack_size - (4 * idx);
                        //         cur_block->instructions.push_back(std::make_shared<LoongArch::ld>(tar, Reg{fp}, -offset, ld::ld_w));
                        //         cur_mapping->spill_mapping[reg->id] = tar;
                        //     }
                        // }

                        // is_dst = true;
                        // use_reg->accept(*this);
                        auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), use_reg->id);
                        if(it != cur_mapping->spill_vec.end()) {
                            Reg tar;
                            if(use_reg->get_type() == vartype::FLOAT || use_reg->get_type() == vartype::FLOATADDR) {
                                tar.type = FLOAT;
                            }
                            else {
                                tar.type = INT;
                            }
                            tar.ir_id = use_reg->id;
                            if(is_dst) {
                                is_dst = false;
                                tar.id = spill_dst.id;
                                pass_reg = tar;
                            }
                            else {
                                if(flag) {
                                    tar.id = spill_use_1.id;
                                }
                                else {
                                    tar.id = spill_use_2.id;
                                }
                                flag = !flag;
                                int idx = std::distance(cur_mapping->spill_vec.begin(), it);
                                int offset = cur_func->stack_size - (4 * idx);
                                b->insert_before_jump(std::make_shared<LoongArch::ld>(tar, Reg{fp}, -offset, ld::ld_w));
                                pass_reg = tar;
                            }
                        }
                        else {
                            pass_reg = cur_mapping->transfer_reg(*use_reg);
                        }
                        Reg temp = pass_reg;

                        // Reg temp = cur_mapping->transfer_reg(*use_reg.get());
                        // Reg mid = cur_mapping->new_reg();
                        auto mid = const_reg_l;
                        mid.type = temp.type;
                        if(temp.is_float()) {
                            b->insert_before_jump(std::make_shared<LoongArch::mov>(mid, temp, mov::ftf_f));
                        }
                        else {
                            b->insert_before_jump(
                                std::make_shared<RegImmInst>(RegImmInst::addi_w,mid,temp,0)
                            );
                        }
                        Pending_moves.push_back({b,cur->dst,mid});

                        // spill_idx = spill_base;
                        // for(auto reg :regs) {
                        //     auto tar = Reg{spill_idx++};
                        //     auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
                        //     if(it != cur_mapping->spill_vec.end()) {
                        //         int idx = std::distance(cur_mapping->spill_vec.begin(), it);
                        //         int offset = cur_func->stack_size - (4 * idx);
                        //         cur_block->instructions.push_back(std::make_shared<LoongArch::st>(tar, Reg{fp}, -offset, st::st_w));
                        //         auto del_it = cur_mapping->spill_mapping.find(reg->id);
                        //         if(del_it != cur_mapping->spill_mapping.end())
                        //             cur_mapping->spill_mapping.erase(del_it);
                        //     }
                        // }

                    }else{
                        std::shared_ptr<ir::ir_constant> use_constant = std::dynamic_pointer_cast<ir::ir_constant>(prev.first);
                        //直接把那个立即数放到相应的phi的目的寄存器里面就行了，在uses block的的jump的前一句
                        //这里直接使用LoongArch的加载立即数指令
                        using_reg = const_reg_r;
                        // auto value = use_constant->init_val.value();
                        // use_constant->accept(*this);
                        auto optional_val = use_constant->init_val;
                        if(use_constant->get_type() == vartype::FLOAT || use_constant->get_type() == vartype::FLOATADDR) {
                            using_reg.type = FLOAT;
                        }
                        else {
                            using_reg.type = INT;
                        }
                        if(optional_val.has_value()) {
                            auto variant_val = optional_val.value();
                            if(std::holds_alternative<int>(variant_val)) {
                                int val = std::get<int>(variant_val);
                                b->insert_before_jump(std::make_shared<LoongArch::LoadImm>(using_reg, val));
                            } else if(std::holds_alternative<float>(variant_val)) {
                                float val = std::get<float>(variant_val);
                                Reg middle_reg{using_reg.id};
                                b->insert_before_jump(std::make_shared<LoongArch::LoadFloat>(middle_reg, prog->float_nums.size()));
                                b->insert_before_jump(std::make_shared<LoongArch::ld>(using_reg, middle_reg, 0, ld::fld_f));
                                // double double_num = static_cast<double>(val);
                                std::bitset<32> bits(*reinterpret_cast<unsigned int*>(&val));
                                std::stringstream ss;
                                ss << std::hex << std::setw(8) << std::setfill('0') << bits.to_ulong();
                                prog->float_nums.push_back("0x" + ss.str());
                            }
                        }
                        pass_reg = using_reg;
                        auto value = pass_reg;
                        // auto mid = cur_mapping->new_reg();
                        auto mid = const_reg_l;
                        mid.type = value.type;
                        // if(std::holds_alternative<int>(value)){
                        //     int value_num = std::get<int>(value);
                        //     b->insert_before_jump(
                        //         std::make_shared<LoongArch::LoadImm>(mid,value_num)
                        //     );
                        // }
                        if(value.is_float()) {
                            b->insert_before_jump(std::make_shared<LoongArch::mov>(mid, value, mov::ftf_f));
                        }
                        else {
                            b->insert_before_jump(std::make_shared<LoongArch::RegRegInst>(RegRegInst::add_w, mid, value, Reg{0}));
                        }

                        // int spill_idx = spill_base;
                        // std::vector<std::shared_ptr<ir::ir_reg>> regs;
                        // regs.push_back(cur->dst);
                        // for(auto reg : regs) {
                        //     auto tar = Reg{spill_idx++};
                        //     auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
                        //     if(it != cur_mapping->spill_vec.end()) {
                        //         int idx = std::distance(cur_mapping->spill_vec.begin(), it);
                        //         int offset = cur_func->stack_size - (4 * idx);
                        //         cur_block->instructions.push_back(std::make_shared<LoongArch::ld>(tar, Reg{fp}, -offset, ld::ld_w));
                        //         cur_mapping->spill_mapping[reg->id] = tar;
                        //     }
                        // }

                        Pending_moves.push_back({b,cur->dst,mid});

                        // spill_idx = spill_base;
                        // for(auto reg :regs) {
                        //     auto tar = Reg{spill_idx++};
                        //     auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
                        //     if(it != cur_mapping->spill_vec.end()) {
                        //         int idx = std::distance(cur_mapping->spill_vec.begin(), it);
                        //         int offset = cur_func->stack_size - (4 * idx);
                        //         cur_block->instructions.push_back(std::make_shared<LoongArch::st>(tar, Reg{fp}, -offset, st::st_w));
                        //         auto del_it = cur_mapping->spill_mapping.find(reg->id);
                        //         if(del_it != cur_mapping->spill_mapping.end())
                        //             cur_mapping->spill_mapping.erase(del_it);
                        //     }
                        // }
                    }

                }
            }
        }
    }
    for(auto &i : Pending_moves){
        // int spill_idx = spill_base;
        // std::vector<std::shared_ptr<ir::ir_reg>> regs;
        // regs.push_back(i.to);
        // for(auto reg : regs) {
        //     auto tar = Reg{spill_idx++};
        //     auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
        //     if(it != cur_mapping->spill_vec.end()) {
        //         int idx = std::distance(cur_mapping->spill_vec.begin(), it);
        //         int offset = cur_func->stack_size - (4 * idx);
        //         i.block->insert_before_jump(std::make_shared<LoongArch::ld>(tar, Reg{fp}, -offset, ld::ld_w));
        //         cur_mapping->spill_mapping[reg->id] = tar;
        //     }
        // }
        is_dst = true;
        // i.to->accept(*this);
        auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), i.to->id);
        if(it != cur_mapping->spill_vec.end()) {
            Reg tar;
            if(i.to->get_type() == vartype::FLOAT || i.to->get_type() == vartype::FLOATADDR) {
                tar.type = FLOAT;
            }
            else {
                tar.type = INT;
            }
            tar.ir_id = i.to->id;
            if(is_dst) {
                is_dst = false;
                tar.id = spill_dst.id;
                pass_reg = tar;
                // return;
            }
            else {
                if(flag) {
                    tar.id = spill_use_1.id;
                }
                else {
                    tar.id = spill_use_2.id;
                }
                flag = !flag;
                int idx = std::distance(cur_mapping->spill_vec.begin(), it);
                int offset = cur_func->stack_size - (4 * idx);
                i.block->insert_before_jump(std::make_shared<LoongArch::ld>(tar, Reg{fp}, -offset, ld::ld_w));
                pass_reg = tar;
            }
        }
        else {
            pass_reg = cur_mapping->transfer_reg(*i.to);
        }
        auto to = pass_reg;
        // i.block->insert_before_jump(std::make_shared<RegImmInst>(RegImmInst::addi_w, cur_mapping->transfer_reg(*i.to.get()), i.from, 0)); //插入一条move指令
        if(to.is_float()) {
            i.block->insert_before_jump(std::make_shared<LoongArch::mov>(to, i.from, mov::ftf_f));
        }
        else {
            i.block->insert_before_jump(std::make_shared<RegImmInst>(RegImmInst::addi_w, to, i.from, 0)); //插入一条move指令
        }
        // check_write_back(to);
        it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), to.ir_id);
        if(it != cur_mapping->spill_vec.end()) {
            int idx = std::distance(cur_mapping->spill_vec.begin(), it);
            int offset = cur_func->stack_size - (4 * idx);
            i.block->insert_before_jump(std::make_shared<LoongArch::st>(to, Reg{fp}, -offset, st::st_w));
        }
        cur_func->regn = cur_mapping->regn;

        // spill_idx = spill_base;
        // for(auto reg :regs) {
        //     reg->accept(*this);
        //     auto tar = Reg{spill_idx++};
        //     auto it = std::find(cur_mapping->spill_vec.begin(), cur_mapping->spill_vec.end(), reg);
        //     if(it != cur_mapping->spill_vec.end()) {
        //         int idx = std::distance(cur_mapping->spill_vec.begin(), it);
        //         int offset = cur_func->stack_size - (4 * idx);
        //         i.block->insert_before_jump(std::make_shared<LoongArch::st>(tar, Reg{fp}, -offset, st::st_w));
        //         auto del_it = cur_mapping->spill_mapping.find(reg->id);
        //         if(del_it != cur_mapping->spill_mapping.end())
        //             cur_mapping->spill_mapping.erase(del_it);
        //     }
        // }
    }
}

void LoongArch::ProgramBuilder::visit(ir::store &node) {
    // is_dst = true;
    // node.addr->accept(*this);
    // Reg reg = pass_reg;
    using_reg = const_reg_l;
    node.value->accept(*this);
    Reg dst = pass_reg;
    st::Type type = st::st_w;
    stptr::Type sttype = stptr::st_w;
    if(dst.is_float()) {
        type = st::fst_f;
        sttype = stptr::fst_f;
    }
    // cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(RegRegInst::add_w, reg, Reg{0}, dst));
    if(node.addr->is_arr) {
        node.addr->accept(*this);
        Reg reg = pass_reg;
        cur_block->instructions.push_back(std::make_shared<st>(dst, reg, 0, type));
    }
    else if(node.addr->is_global) {
        node.addr->accept(*this);
        Reg reg = pass_reg;
        cur_block->instructions.push_back(std::make_shared<la>(node.addr, reg));
        cur_block->instructions.push_back(std::make_shared<stptr>(dst, reg, 0, sttype));
    }
    else {
        int offset = cur_mapping->mem_var.find(node.addr->id)->second;
        offset = cur_func->stack_size - offset;
        cur_block->instructions.push_back(std::make_shared<st>(dst, Reg{fp}, -offset, type));
    }
    // check_write_back(reg);
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
    if(cond.type == FBOOL) {
        auto target_true = cur_mapping->blockmapping[node.get_target_true()];
        auto target_false = cur_mapping->blockmapping[node.get_target_false()];
        cur_block->instructions.push_back(std::make_shared<LoongArch::Br>(Br::bcnez, cond, target_true.get()));
        cur_block->instructions.push_back(std::make_shared<LoongArch::Jump>(target_false.get()));
    }
    else {
        auto target_true = cur_mapping->blockmapping[node.get_target_true()];
        auto target_false = cur_mapping->blockmapping[node.get_target_false()];
        cur_block->instructions.push_back(std::make_shared<LoongArch::Br>(Br::bnez, cond, target_true.get()));
        cur_block->instructions.push_back(std::make_shared<LoongArch::Jump>(target_false.get()));
    }
}

void LoongArch::ProgramBuilder::visit(ir::ret &node) {
    node.value->accept(*this);
    Reg backend_reg = pass_reg;
    if(backend_reg.is_float()) {
        cur_block->instructions.push_back(std::make_shared<LoongArch::mov>(Reg{0, FLOAT}, backend_reg, mov::ftf_f));
    }
    else {
        cur_block->instructions.push_back(
            std::make_shared<LoongArch::RegRegInst>(RegRegInst::orw,Reg{4},backend_reg,Reg{0})
        );
    }
    cur_block->instructions.push_back(
        std::make_shared<LoongArch::ld>(Reg{22},Reg{3},this->cur_func->stack_size - 16,ld::ld_d)
    );
    cur_block->instructions.push_back(std::make_shared<LoongArch::ld>(Reg{ra}, Reg{sp}, cur_func->stack_size - 8, ld::ld_d));
    cur_block->instructions.push_back(
        std::make_shared<LoongArch::RegImmInst>(RegImmInst::addi_d,Reg{sp},Reg{sp},cur_func->stack_size)
    );
    cur_block->instructions.push_back(std::make_shared<LoongArch::jr>(true));
}

void LoongArch::ProgramBuilder::visit(ir::load &node) {
    node.addr->accept(*this);
    Reg src = pass_reg;
    is_dst = true;
    node.dst->accept(*this);
    Reg dst = pass_reg;
    ld::Type type = ld::ld_w;
    ldptr::Type ldtype = ldptr::ld_w;
    if(dst.is_float()) {
        type = ld::fld_f;
        ldtype = ldptr::fld_f;
    }
    // cur_block->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::addi_w, dst, src, 0));
    if(node.addr->is_arr) {
        node.addr->accept(*this);
        Reg reg = pass_reg;
        cur_block->instructions.push_back(std::make_shared<ld>(dst, reg, 0, type));
    }
    else if(node.addr->is_global) {
        node.addr->accept(*this);
        Reg reg = pass_reg;
        cur_block->instructions.push_back(std::make_shared<la>(node.addr, reg));
        cur_block->instructions.push_back(std::make_shared<ldptr>(dst, reg, 0, ldtype));
    }
    else {
        int offset = cur_mapping->mem_var.find(node.addr->id)->second;
        offset = cur_func->stack_size - offset;
        cur_block->instructions.push_back(std::make_shared<ld>(dst, Reg{fp}, -offset, type));
    }
    check_write_back(dst);
}

void LoongArch::ProgramBuilder::visit(ir::alloc &node) {
    // is_dst = true;
    // node.var->addr->accept(*this);
    // auto dst = pass_reg;
    // int offset = cur_mapping->mem_var.find(node.var->addr->id)->second;
    // cur_block->instructions.push_back(std::make_shared<RegImmInst>(RegImmInst::addi_w, dst, Reg{0}, offset));
    // check_write_back(dst);
    
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
    is_dst = true;
    node.def_reg()[0]->accept(*this);
    Reg dst = pass_reg;
    using_reg = const_reg_l;
    node.use_reg()[0]->accept(*this);
    Reg src = pass_reg;                                                                                            // Reg：物理寄存器
    if(node.op == unaryop::minus) {                                                                     // 当op为“-”（取反指令）
        if(src.is_float()) {
            cur_block->instructions.push_back(std::make_shared<LoongArch::funary>(dst, src, funary::neg_f));
        }
        else {
            auto negative = const_reg_r;
            cur_block->instructions.push_back(std::make_shared<LoongArch::LoadImm>(negative, -1));
            cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(RegRegInst::mul_w, dst, src, negative));
        }
    }
    else if(node.op == unaryop::plus) {                                                                 // 当op为“+”（符号不变）
        if(src.is_float()) {
            cur_block->instructions.push_back(std::make_shared<LoongArch::mov>(dst, src, mov::ftf_f));
        }
        else {
            cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(RegRegInst::add_w, dst, Reg{0}, src));
        }
    }
    else if(node.op == unaryop::op_not) {                                                               // 当op为布尔非
        cur_block->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::xori, dst, src, true)); // （xori是我自己加的）
    }
    check_write_back(dst);
}

void LoongArch::ProgramBuilder::visit(ir::binary_op_ins &node) {
    std::unordered_map<binop, RegRegInst::Type> map = {
        {binop::plus, RegRegInst::add_w}, 
        {binop::minus, RegRegInst::sub_w}, 
        {binop::multiply, RegRegInst::mul_w},
        {binop::divide, RegRegInst::div_w},
        {binop::modulo, RegRegInst::mod_w}
    };
    std::unordered_map<binop, RegRegInst::Type> fmap = {
        {binop::plus, RegRegInst::fadd_f}, 
        {binop::minus, RegRegInst::fsub_f}, 
        {binop::multiply, RegRegInst::fmul_f},
        {binop::divide, RegRegInst::fdiv_f}
    };
    // auto type = map[node.op];
    auto tar_r = std::dynamic_pointer_cast<ir::ir_reg>(node.dst);
    is_dst = true;
    node.dst->accept(*this);
    Reg tar = pass_reg;
    RegRegInst::Type type;
    if(tar.is_float()) {
        type = fmap[node.op];
    }
    else {
        type = map[node.op];
    }
    using_reg = const_reg_r;
    node.src1->accept(*this);
    Reg exp1 = pass_reg;
    using_reg = const_reg_r;
    node.src2->accept(*this);
    Reg exp2 = pass_reg;
    cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(type, tar, exp1, exp2));
    check_write_back(tar);
}

void LoongArch::ProgramBuilder::visit(ir::cmp_ins &node) {
    is_dst = true;
    node.def_reg()[0]->accept(*this);
    Reg dst = pass_reg;
    auto exps = node.use_reg();
    using_reg = const_reg_l;
    exps[0]->accept(*this);
    Reg exp1 = pass_reg;
    using_reg = const_reg_r;
    exps[1]->accept(*this);
    Reg exp2 = pass_reg;
    if(node.dst->get_type() == vartype::FBOOL) {
        // if(node.op == relop::equal || node.op == relop::non_equal)
        std::unordered_map<relop, FCMP::Type> map_to_f = {
            {relop::equal, FCMP::eq},
            {relop::non_equal, FCMP::ne},
            {relop::greater, FCMP::gt},
            {relop::greater_equal, FCMP::ge},
            {relop::less, FCMP::lt},
            {relop::less_equal, FCMP::le},
        };
        cur_block->instructions.push_back(std::make_shared<LoongArch::FCMP>(dst, exp1, exp2, map_to_f[node.op]));
    }
    else {
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
    check_write_back(dst);
}

void LoongArch::ProgramBuilder::visit(ir::logic_ins &node) {
    // auto dst = cur_mapping->transfer_reg(*std::dynamic_pointer_cast<ir::ir_reg>(node.def_reg()[0]).get());
    is_dst = true;
    node.def_reg()[0]->accept(*this);
    auto dst = pass_reg;
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
    check_write_back(dst);
}

void LoongArch::ProgramBuilder::visit(ir::get_element_ptr& node) {
    auto dimensions = node.obj_offset;
    is_dst = true;
    node.dst->accept(*this);
    auto dst = pass_reg;
    if(node.base->addr->is_global) {
        cur_block->instructions.push_back(std::make_shared<la>(node.base->addr, dst, la::local));
    }
    else if(node.base->dim->has_first_dim) {
        int offset = cur_mapping->mem_var.find(node.base->addr->id)->second - cur_func->stack_size;
        cur_block->instructions.push_back(std::make_shared<RegImmInst>(RegImmInst::addi_d, dst, Reg{fp}, offset));
    }
    else {
        node.base->addr->accept(*this);
        auto base_add = pass_reg;
        cur_block->instructions.push_back(std::make_shared<RegRegInst>(RegRegInst::add_d, dst, base_add, Reg{0}));
    }
    for(int i = 0; (i < dimensions.size() - 1) && !dimensions.empty(); i++) {
        using_reg = const_reg_l;
        // auto ini_r = std::make_shared<ir::ir_constant>(1);
        // ini_r->accept(*this);
        dimensions[i]->accept(*this);
        Reg ini = pass_reg;
        int total_cnt = 1;
        for(int j = i + 1; j < node.base->dim->dimensions.size(); j++) {
            total_cnt *= node.base->dim->dimensions[j]->calc_res();
        }
        auto load_cnt = std::make_shared<ir::ir_constant>(total_cnt);
        using_reg = const_reg_r;
        load_cnt->accept(*this);
        Reg cnt = pass_reg;
        cur_block->instructions.push_back(std::make_shared<LoongArch::RegRegInst>(RegRegInst::mul_d, ini, ini, cnt));
        cur_block->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::slli_d, ini, ini, 2));
        cur_block->instructions.push_back(std::make_shared<RegRegInst>(RegRegInst::add_d, dst, dst, ini));
    }
    if(!dimensions.empty()) {
        dimensions.back()->accept(*this);
        auto ini = pass_reg;
        cur_block->instructions.push_back(std::make_shared<LoongArch::RegImmInst>(RegImmInst::slli_d, ini, ini, 2));
        cur_block->instructions.push_back(std::make_shared<RegRegInst>(RegRegInst::add_d, dst, dst, ini));
    }
    check_write_back(dst);
    node.dst->is_arr = true;
    // pass_reg = dst;
}

void LoongArch::ProgramBuilder::visit(ir::while_loop& node) {
    auto tar_b = node.cond_from;
    auto target = cur_mapping->blockmapping[tar_b];
    cur_block->instructions.push_back(std::make_shared<LoongArch::Jump>(target.get()));
}

void LoongArch::ProgramBuilder::visit(ir::break_or_continue& node) {
    auto tar_b = node.target;
    auto target = cur_mapping->blockmapping[tar_b];
    cur_block->instructions.push_back(std::make_shared<LoongArch::Jump>(target.get()));
}

void LoongArch::ProgramBuilder::visit(ir::func_call& node) {
    int i_pointer = 4;
    int f_pointer = 0;
    for(auto par : node.params) {
        par->accept(*this);
        auto reg = pass_reg;
        if(reg.is_float()) {
            cur_block->instructions.push_back(std::make_shared<LoongArch::mov>(Reg{f_pointer++, FLOAT}, reg, mov::ftf_f));
        }
        else {
            cur_block->instructions.push_back(std::make_shared<RegRegInst>(RegRegInst::add_d, Reg{i_pointer++}, reg, Reg{0}));
        }
    }
    cur_block->instructions.push_back(std::make_shared<LoongArch::Bl>(node.func_name));
    if(node.ret_reg) {
        is_dst = true;
        node.ret_reg->accept(*this);
        auto dst = pass_reg;
        if(dst.is_float()) {
            cur_block->instructions.push_back(std::make_shared<LoongArch::mov>(dst, Reg{0, Rtype::FLOAT}, mov::ftf_f));
        }
        else {
            cur_block->instructions.push_back(std::make_shared<RegRegInst>(RegRegInst::add_d, dst, Reg{4}, Reg{0}));
        }
    }
}

void LoongArch::ProgramBuilder::visit(ir::global_def& node) {

}

void LoongArch::ProgramBuilder::visit(ir::trans& node) {
    node.src->accept(*this);
    Reg src = pass_reg;
    is_dst = true;
    node.dst->accept(*this);
    Reg dst = pass_reg;
    if(node.target == vartype::FLOAT) {
        cur_block->instructions.push_back(std::make_shared<LoongArch::mov>(dst, src, mov::gtf));
        cur_block->instructions.push_back(std::make_shared<LoongArch::trans>(dst, dst, trans::itf));
    }
    else {
        cur_block->instructions.push_back(std::make_shared<LoongArch::trans>(src, src, trans::fti));
        cur_block->instructions.push_back(std::make_shared<LoongArch::mov>(dst, src, mov::ftg));
    }
    check_write_back(dst);
}

void LoongArch::ProgramBuilder::visit(ir::ir_libfunc& node) {
    
}
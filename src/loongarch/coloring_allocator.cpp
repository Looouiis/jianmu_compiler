#include "loongarch/coloring_allocator.hpp"
#include "ir/ir.hpp"
#include "loongarch/register_allocator.hpp"
#include "parser/SyntaxTree.hpp"
#include <cassert>
#include <memory>
#include <queue>
#include <unordered_map>
#include <vector>

LoongArch::ColoringAllocator::ColoringAllocator(ptr<ir::ir_userfunc> fun, int base_reg, ptr_list<ir::global_def> global_var) : fun(fun) {
    if(!fun->check_analysed()) {        // spill时改变代码不会改变控制流的结构
        analyse_cfg_flow();
    }
}

LoongArch::alloc_res LoongArch::ColoringAllocator::run(Rtype target) {
        switch (target) {
        case Rtype::INT: {
            is_target = [](ptr<ir::ir_reg> ireg) {
                return ireg->get_type() != vartype::FLOAT && ireg->get_type() != vartype::FBOOL;
            };
            this->using_color = i_color;
            break;
        }
        case Rtype::FLOAT: {
            is_target = [](ptr<ir::ir_reg> ireg) {
                return ireg->get_type() == vartype::FLOAT;
            };
            this->using_color = f_color;
            break;
        }
        case Rtype::FBOOL: {
            is_target = [](ptr<ir::ir_reg> ireg) {
                return ireg->get_type() == vartype::FBOOL;
            };
            this->using_color = fb_color;
            break;
        }
    }
    this->dealing = target;

    bool success = false;
    while(!success) {
        clear();
        // analyse_live();
        build_ig();
        kempe_opt();
        if(rewrite()) continue;

        success = true;
    }


    std::vector<std::shared_ptr<ir::ir_reg>> empty_spill;
    std::vector<std::shared_ptr<ir::ir_memobj>> empty_alloc;
    alloc_res res(mapping_to_reg, empty_spill, empty_alloc);
    return res;
}

bool LoongArch::ColoringAllocator::rewrite() {
    if(spill_set.empty()) {
        return false;
    }
    for(auto reg : spill_set) {
        auto def_ins = reg->get_def_loc();
        auto def_block = def_ins->get_block();
        ptr_list<ir::ir_basicblock> work_lst = {def_block};
        ptr_list<ir::ir_basicblock> nxt_iter;
        std::unordered_map<ptr<ir::ir_basicblock>, bool> visit;
        visit[def_block] = true;
        while(!work_lst.empty()) {
            nxt_iter.clear();
            for(auto block : work_lst) {
                std::vector<std::pair<std::list<ptr<ir::ir_instr>>::iterator, ptr<ir::ir_reg>>> load_vec;
                auto ins = block->get_instructions();
                std::list<ptr<ir::ir_instr>>::iterator it;
                if(block == def_block) {
                    it = std::find(ins.begin(), ins.end(), def_ins);
                }
                else {
                    it = ins.begin();
                }

                bool cur_block_is_finished = false;
                for(; it != ins.end(); it++) {
                    auto cur_ins = *it;
                    
                    if(live_in[cur_ins].find(reg) != live_in[cur_ins].end()) {    // 这个reg在当前指令处仍然活跃
                        auto use = cur_ins->use_reg();
                        if(std::find(use.begin(), use.end(), reg) != use.end()) {   // 这个reg活跃且被使用
                            // TODO：保存需要添加加载指令的位置并且保存加载的def_reg值
                        }
                        auto def = cur_ins->def_reg();
                        if(std::find(def.begin(), def.end(), reg) != def.end()) {   // 这个reg活跃且被定值
                            abort();                                                                // 不应该出现这种情况
                        }
                    }
                    else {      // 这个reg已经在当前指令已经不再活跃了
                        cur_block_is_finished = true;
                        break;  // 没必要继续分析了
                    }
                }

                // 插入load
                auto &ins_ref = block->get_instructions_ref();
                for(auto load_it : load_vec) {
                    // TODO：添加加载指令
                }

                if(cur_block_is_finished) continue;
                auto successor = fun->check_nxt(block);     // 如果已经抵达了use的终点，则不用寻找这个block的nxt
                for(auto s : successor) {
                    if(!visit[s]) {
                        visit[s] = true;
                        nxt_iter.push_back(s);
                    }
                }
            }

            work_lst = nxt_iter;
        }
    }
    return true;
}

// 返回值：true代表需要spill，false代表不需要
void LoongArch::ColoringAllocator::kempe_opt() {
    auto remove_ig = ig;
    ptr_list<ir::ir_reg> stk;
    while(remove_ig.size()) {
        auto n = remove(remove_ig);
        stk.push_back(n);
    }
    while(stk.size()) {
        auto n = stk.back();
        stk.pop_back();
        if(!assign_color(n)) {
            spill_set.insert(n);
        }
    }
}

bool LoongArch::ColoringAllocator::assign_color(ptr<ir::ir_reg> node) {
    auto available_color = using_color;
    assert(!available_color.empty());
    for(auto reg : ig[node]) {
        available_color.erase(std::find(available_color.begin(), available_color.end(), mapping_to_reg.find(reg)->second));
    }
    if(!available_color.empty()) {
        mapping_to_reg[node] = available_color.front();
        return true;
    }
    else {
        return false;
    }
}

ptr<ir::ir_reg> LoongArch::ColoringAllocator::remove(std::unordered_map<ptr<ir::ir_reg>, std::unordered_set<ptr<ir::ir_reg>>> &g) {
    assert(!g.empty());
    assert(!this->using_color.empty());
    ptr<ir::ir_reg> del_item = nullptr;
    for(auto [reg, vec] : g) {
        if(vec.size() < this->using_color.size()) {
            del_item = reg;
        }
    }
    if(del_item == nullptr) {
        del_item = g.begin()->first;
    }

    assert(del_item);
    for(auto conf : g[del_item]) {
        g[conf].erase(del_item);
    }
    g.erase(del_item);
    return del_item;
}

void LoongArch::ColoringAllocator::build_ig() {
    analyse_live();
    ig.clear();
    ptr_list<ir::ir_basicblock> work_lst = {fun->get_entry()};
    ptr_list<ir::ir_basicblock> nxt_iter;
    std::unordered_map<ptr<ir::ir_basicblock>, bool> visit;
    visit[fun->get_entry()] = true;
    while(!work_lst.empty()) {
        nxt_iter.clear();
        for(auto block : work_lst) {
            auto successor = fun->check_nxt(block);
            for(auto s : successor) {
                if(!visit[s]) {
                    visit[s] = true;
                    nxt_iter.push_back(s);
                }
            }

            for(auto ins : block->get_instructions()) {
                // llvm-ir不存在直接的赋值语句（x = y）
                for(auto u : live_out[ins]) {
                    for(auto v : ins->def_reg()) {
                        if(is_target(u) && is_target(v)) {
                            ig[u].insert(v);
                            ig[v].insert(u);
                        }
                    }
                }
            }
        }
        work_lst = nxt_iter;
    }
}

void LoongArch::ColoringAllocator::analyse_live() {
    bool changed = true;
    while(changed) {
        changed = false;
        ptr_list<ir::ir_basicblock> work_lst;
        ptr_list<ir::ir_basicblock> nxt_iter;
        std::unordered_map<ptr<ir::ir_basicblock>, bool> visit;
        for(auto block : fun->get_bbs()) {
            if(block->is_ret()) {
                work_lst.push_back(block);
                visit[block] = true;
                break;
            }
        }
        assert(!work_lst.empty());
        while(!work_lst.empty()) {                        // BFS从出口遍历基本块
            nxt_iter.clear();
            for(auto block : work_lst) {
                // 确认下一层的基本块
                auto predecessor = fun->check_predecessor(block);
                for(auto p : predecessor) {
                    if(!visit[p]) {
                        visit[p] = true;
                        nxt_iter.push_back(p);
                    }
                }

                auto instructions = block->get_instructions();
                for(auto it = instructions.rbegin(); it != instructions.rend(); it++) {
                    auto ins = *it;
                    auto &out = live_out[ins];
                    auto bak = live_out[ins];
                    // out.clear();            // 每次迭代都是新增的话clear理应能去除掉
                    if(it == instructions.rbegin()) {
                        auto successor = fun->check_nxt(block);
                        for(auto s : successor) {
                            for(auto in : live_in[s->get_instructions().front()]) {
                                if(is_target(in))
                                    out.insert(in);
                            }
                        }
                    }
                    else {
                        for(auto in : live_in[*std::prev(it)]) {
                            if(is_target(in))
                                out.insert(in);
                        }
                    }
                    changed |= (out != bak);

                    auto &in = live_in[ins];
                    bak = live_in[ins];
                    in = live_out[ins];
                    for(auto def : ins->def_reg()) {
                        // auto is_reg = std::dynamic_pointer_cast<ir::ir_reg>(def);
                        // assert(is_reg);
                        // if(is_reg) in.erase(is_reg);
                        if(is_target(def))
                            in.erase(def);
                    }
                    for(auto use : ins->use_reg()) {
                        // auto is_reg = std::dynamic_pointer_cast<ir::ir_reg>(use);
                        // assert(is_reg);
                        // if(is_reg) in.insert(is_reg);
                        if(is_target(use))
                            in.insert(use);
                    }
                    changed |= (in != bak);
                }
            }
            work_lst = nxt_iter;
        }
    }
}

void LoongArch::ColoringAllocator::clear() {
    this->ig.clear();
    this->mapping_to_reg.clear();
    this->spill_set.clear();
}

void LoongArch::ColoringAllocator::analyse_cfg_flow() {
    auto blocks = fun->get_bbs();
    std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> predecessor;
    std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> nxt;                    // cfg中的逆映射
    for(auto block : blocks) {
        for(auto instruction : block->get_instructions()) {
            auto jump_ins = std::dynamic_pointer_cast<ir::jump>(instruction);
            auto br_ins = std::dynamic_pointer_cast<ir::br>(instruction);
            auto bc_ins = std::dynamic_pointer_cast<ir::break_or_continue>(instruction);
            auto while_ins = std::dynamic_pointer_cast<ir::while_loop>(instruction);
            auto store_ins = std::dynamic_pointer_cast<ir::store>(instruction);
            if(jump_ins) {
                auto tar = jump_ins->get_target();
                predecessor[tar].push_back(block);
                nxt[block].push_back(tar);
            }
            if(bc_ins) {
                auto tar = bc_ins->get_target();
                predecessor[tar].push_back(block);
                nxt[block].push_back(tar);
            }
            if(br_ins) {
                auto tar = br_ins->get_target_true();
                predecessor[tar].push_back(block);
                nxt[block].push_back(tar);
                tar = br_ins->get_target_false();
                predecessor[tar].push_back(block);
                nxt[block].push_back(tar);
            }
            if(while_ins) {
                auto cond_from = while_ins->get_cond_from();
                auto tar = while_ins->get_out_block();
                predecessor[tar].push_back(cond_from);
                nxt[cond_from].push_back(tar);
                // s_back_trace[cond_from].push_back(block);
                predecessor[cond_from].push_back(block);
                // n_back_trace[block].push_back(cond_from);
                nxt[block].push_back(cond_from);
            }
        }
    }
    fun->set_predecessor(predecessor);
    fun->set_nxt(nxt);
    fun->mark_analysed();
}
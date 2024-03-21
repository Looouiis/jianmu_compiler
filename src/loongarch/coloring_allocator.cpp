#include "loongarch/coloring_allocator.hpp"
#include "ir/ir.hpp"
#include "parser/SyntaxTree.hpp"
#include <cassert>
#include <queue>

LoongArch::ColoringAllocator::ColoringAllocator(ptr<ir::ir_userfunc> fun, int base_reg, ptr_list<ir::global_def> global_var) {
    this->fun = fun;
    if(!fun->check_analysed()) {
        analyse_cfg_flow();
    }
    analyse_live();
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
                                out.insert(in);
                            }
                        }
                    }
                    else {
                        for(auto in : live_in[*std::prev(it)]) {
                            out.insert(in);
                        }
                    }
                    changed |= (out != bak);

                    auto &in = live_in[ins];
                    bak = live_in[ins];
                    in = live_out[ins];
                    for(auto def : ins->def_reg()) {
                        in.erase(def);
                    }
                    for(auto use : ins->use_reg()) {
                        in.insert(use);
                    }
                    changed |= (in != bak);
                }
            }
            work_lst = nxt_iter;
        }
    }
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
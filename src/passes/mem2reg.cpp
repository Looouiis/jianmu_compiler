#include "mem2reg.hpp"
#include "ir/ir.hpp"
#include <algorithm>
#include <iterator>

void Passes::Mem2Reg::run() {
    func_lst = compunit->usrfuncs;
    for(auto [name, fun] : func_lst) {
        analyse_cfg_flow(fun);
        remove_empty_block(fun);
        analyse_dom_relation(fun);
    }
}

void Passes::Mem2Reg::analyse_dom_relation(ptr<ir::ir_userfunc> fun) {
    auto blocks = fun->get_bbs();
    auto &out = dom[fun];
    std::unordered_map<ptr<ir::ir_basicblock>, std::set<ptr<ir::ir_basicblock>>> in;
    ptr_list<ir::ir_basicblock> not_entry_block;
    for(auto block : blocks) {
        if(block->check_is_entry()) {
            out[block] = {block};
        }
        else {
            out[block] = {blocks.begin(), blocks.end()};
            not_entry_block.push_back(block);
        }
    }
    bool changed = true;
    while(changed) {
        changed = false;
        for(auto b : not_entry_block) {
            auto cur_successor = fun->check_successor(b);
            for(auto it = cur_successor.begin(); it != cur_successor.end(); it++) {
                auto &p = *it;
                if(it == cur_successor.begin()) {
                    in[b] = out[p];
                }
                else {
                    std::set<ptr<ir::ir_basicblock>> tmp;
                    std::set_intersection(
                        in[b].begin(), in[b].end(),
                        out[p].begin(), out[p].end(),
                        std::inserter(tmp, tmp.begin())
                    );
                    in[b] = tmp;
                }
            }
            auto tmp = in[b];
            tmp.insert(b);
            if(tmp != out[b]) {
                changed = true;
                out[b] = tmp;
            }
        }
    }
    for(auto [bb, dom] : out) {
        auto s = bb;
    }
}

void Passes::Mem2Reg::analyse_cfg_flow(ptr<ir::ir_userfunc> fun) {
    auto blocks = fun->get_bbs();
    std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> successor;
    std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> s_back_trace;           // 回边
    std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> nxt;                    // cfg中的逆映射
    std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> n_back_trace;
    for(auto block : blocks) {
        for(auto instruction : block->get_instructions()) {
            auto jump_ins = std::dynamic_pointer_cast<ir::jump>(instruction);
            auto br_ins = std::dynamic_pointer_cast<ir::br>(instruction);
            auto while_ins = std::dynamic_pointer_cast<ir::while_loop>(instruction);
            if(jump_ins != nullptr) {
                auto tar = jump_ins->get_target();
                successor[tar].push_back(block);
                nxt[block].push_back(tar);
            }
            if(br_ins != nullptr) {
                auto tar = br_ins->get_target_true();
                successor[tar].push_back(block);
                nxt[block].push_back(tar);
                tar = br_ins->get_target_false();
                successor[tar].push_back(block);
                nxt[block].push_back(tar);
            }
            if(while_ins != nullptr) {
                auto cond_from = while_ins->get_cond_from();
                auto tar = while_ins->get_out_block();
                successor[tar].push_back(cond_from);
                nxt[cond_from].push_back(tar);
                s_back_trace[cond_from].push_back(block);
                n_back_trace[block].push_back(cond_from);
            }
        }
    }
    fun->set_successor(successor, s_back_trace);                          // 由于cfg要在寄存器分配中使用，所以可以将逻辑提取到这里，但是需要保存到fun中
    fun->set_nxt(nxt, n_back_trace);
}

void Passes::Mem2Reg::remove_empty_block(ptr<ir::ir_userfunc> fun) {
    std::list<std::shared_ptr<ir::ir_basicblock>>& tmp_b = fun->get_bbs_ref();
    std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>>& tmp_s = fun->get_successor_ref();
    std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>>& tmp_n = fun->get_nxt_ref();

    // 保证只从bb0起始，且去除了空块
    bool changed = true;
    while(changed) {
        changed = false;
        vector<std::shared_ptr<ir::ir_basicblock>> rm_vec;
        for(auto block : tmp_b) {
            if(!block->check_is_entry() && tmp_s[block].size() == 0) {
                rm_vec.push_back(block);
                changed = true;
            }
        }
        for(auto rm : rm_vec) {
            auto new_end = std::remove(tmp_b.begin(), tmp_b.end(), rm);
            tmp_b.erase(new_end, tmp_b.end());
            for(auto child : tmp_n[rm]) {
                // tmp_s[child].remove(block);
                auto new_end = std::remove(tmp_s[child].begin(), tmp_s[child].end(), rm);
                tmp_s[child].erase(new_end, tmp_s[child].end());
            }
        }
    }
}

#include "mem2reg.hpp"
#include "ir/ir.hpp"
#include <algorithm>
#include <cassert>
#include <iterator>
#include <memory>

void Passes::Mem2Reg::run() {
    func_lst = compunit->usrfuncs;
    for(auto [name, fun] : func_lst) {
        analyse_cfg_flow_and_defs(fun);
        // remove_empty_block(fun);
        analyse_dom_relation(fun);
        analyse_df(fun);
        auto phi_v_m = insert_phi_ins(fun);
        
    }
}

// phi_v_m：待完善的phi中目标寄存器和变量的映射
// var_mem：变量和它的地址的逆映射
void rename(ptr<ir::ir_basicblock> block, std::unordered_map<ptr<ir::ir_memobj>, ptr_list<ir::ir_value>> &stack, std::unordered_map<ptr<ir::ir_reg>, ptr<ir::ir_memobj>> phi_v_m, std::unordered_map<ptr<ir::ir_reg>, ptr<ir::ir_memobj>> var_mem) {
    for(auto ins : block->get_instructions()) {
        auto is_phi = std::dynamic_pointer_cast<ir::phi>(ins);
        auto is_store = std::dynamic_pointer_cast<ir::store>(ins);
        if(is_phi) {
            auto it = phi_v_m.find(is_phi->dst);
            if(it != phi_v_m.end()) {
                stack[it->second].push_back(it->first);
            }
        }
        if(is_store) {
            auto it = var_mem.find(is_store->get_addr());
            if(it != var_mem.end()) {
                stack[it->second].push_back(is_store->get_value());
            }
        }
    }
}

void Passes::Mem2Reg::rename_variables(ptr<ir::ir_userfunc> fun, std::unordered_map<ptr<ir::ir_reg>, ptr<ir::ir_memobj>> phi_v_m) {
    auto alloc = fun->get_var_list();
    std::unordered_map<ptr<ir::ir_memobj>, ptr_list<ir::ir_value>> stack;
    std::unordered_map<ptr<ir::ir_reg>, ptr<ir::ir_memobj>> var_mem;
    for(auto def : alloc) {
        stack[def->get_var()] = {};
        var_mem[def->get_var()->get_addr()] = def->get_var();
    }
    rename(fun->get_entry(), stack, phi_v_m, var_mem);
}

std::unordered_map<ptr<ir::ir_reg>, ptr<ir::ir_memobj>> Passes::Mem2Reg::insert_phi_ins(ptr<ir::ir_userfunc> fun) {
    std::set<ptr<ir::ir_basicblock>> f, w;
    auto defs = this->defs[fun];
    auto df = this->df[fun];
    std::unordered_map<ptr<ir::ir_reg>, ptr<ir::ir_memobj>> phi_var_2_mem;
    for(auto alloc : fun->get_var_list()) {
        auto v = alloc->get_var();
        f.clear();
        w.clear();
        for(auto d : defs[v]) {
            w.insert(d);
        }

        while(!w.empty()) {
            auto x = *w.begin();
            w.erase(w.begin());
            for(auto y : df[x]) {
                if(f.find(y) == f.end()) {
                    auto reg = fun->new_reg(v->get_addr()->get_type());
                    auto phi = std::make_shared<ir::phi>(reg);
                    phi_var_2_mem[reg] = v;
                    y->push_front(phi);
                    f.insert(y);
                    bool find = false;
                    for(auto d : defs[v]) {
                        if(d == y) {
                            find = true;
                            break;
                        }
                    }
                    if(!find) {
                        w.insert(y);
                    }
                }
            }
        }
    }
    return phi_var_2_mem;
}

void Passes::Mem2Reg::analyse_df(ptr<ir::ir_userfunc> fun) {
    auto df = this->df[fun];
    auto dom = this->dom[fun];
    auto idom = this->idom[fun];
    auto blocks = fun->get_bbs();
    for(auto a : blocks) {
        auto successor = fun->check_nxt(a);
        for(auto b : successor) {
            auto x = a;
            while(x != b && (std::find(dom[b].begin(), dom[b].end(), x) == dom[b].end())) {
                df[x].insert(b);
                x = idom[x];
            }
        }
    }
}

ptr<ir::ir_basicblock> intersect(ptr<ir::ir_basicblock> b1, ptr<ir::ir_basicblock> b2, ptr_list<ir::ir_basicblock> order, std::unordered_map<ptr<ir::ir_basicblock>, ptr<ir::ir_basicblock>> doms) {
    auto finger1 = b1;
    auto finger2 = b2;
    int distance1 = std::distance(order.begin(), std::find(order.begin(), order.end(), finger1));
    int distance2 = std::distance(order.begin(), std::find(order.begin(), order.end(), finger2));
    while(distance1 != distance2) {
        while(distance1 < distance2) {
            finger1 = doms[finger1];
            distance1 = std::distance(order.begin(), std::find(order.begin(), order.end(), finger1));
        }
        while(distance1 > distance2) {
            finger2 = doms[finger2];
            distance2 = std::distance(order.begin(), std::find(order.begin(), order.end(), finger2));
        }
    }
    return finger1;
}

void Passes::Mem2Reg::analyse_dom_relation(ptr<ir::ir_userfunc> fun) {
    auto blocks = fun->get_bbs();
    auto &out = dom[fun];
    auto &doms = idom[fun];
    std::unordered_map<ptr<ir::ir_basicblock>, std::set<ptr<ir::ir_basicblock>>> in;
    ptr_list<ir::ir_basicblock> not_entry_block;
    int idx = 0;
    std::unordered_map<ptr<ir::ir_basicblock>, bool> visited;
    ptr<ir::ir_basicblock> head = nullptr;
    for(auto block : blocks) {
        if(block->check_is_entry()) {
            head = block;
            out[block] = {block};
            doms[block] = block;
        }
        else {
            out[block] = {blocks.begin(), blocks.end()};
            not_entry_block.push_back(block);
            doms[block] = nullptr;
        }
        visited[block] = false;
    }

    // 计算dom
    bool changed = true;
    while(changed) {
        changed = false;
        for(auto b : not_entry_block) {
            auto cur_predecessor = fun->check_predecessor(b);
            for(auto it = cur_predecessor.begin(); it != cur_predecessor.end(); it++) {
                auto &p = *it;
                if(it == cur_predecessor.begin()) {
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

    // 获取逆后序
    auto &postorder = postorders[fun];
    assert(head);
    calc_postorder(head, fun, postorder, visited);

    // 计算idom
    changed = true;
    while(changed) {
        changed = false;
        for(auto it = postorder.rbegin(); it != postorder.rend(); it++) {
            auto &block = *it;
            if(block->check_is_entry()) continue;
            auto predecessor = fun->check_predecessor(block);
            ptr_list<ir::ir_basicblock> processed;
            for(auto judge : predecessor) {
                if(doms[judge]) {
                    processed.push_back(judge);
                }
            }
            auto new_idom = processed.front();
            for(auto processed_it = processed.begin() + 1; processed_it != processed.end(); processed_it++) {
                auto p = *processed_it;
                new_idom = intersect(p, new_idom, postorder, doms);
            }
            if(doms[block] != new_idom) {
                doms[block] = new_idom;
                changed = true;
            }
        }
    }

    for(auto [bb, dom] : out) {
        auto s = bb;
        auto idom = doms[bb];
        auto pause = s;
    }
}

void Passes::Mem2Reg::calc_postorder(ptr<ir::ir_basicblock> node, ptr<ir::ir_userfunc> fun, ptr_list<ir::ir_basicblock> &postorder, std::unordered_map<ptr<ir::ir_basicblock>, bool> &visited) {
    visited[node] = true;
    auto children = fun->check_nxt(node);
    for(auto child : children) {
        if(!visited[child]) {
            calc_postorder(child, fun, postorder, visited);
        }
    }
    postorder.push_back(node);
}

void Passes::Mem2Reg::analyse_cfg_flow_and_defs(ptr<ir::ir_userfunc> fun) {
    auto blocks = fun->get_bbs();
    std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> predecessor;
    std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> s_back_trace;           // 回边
    std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> nxt;                    // cfg中的逆映射
    std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> n_back_trace;
    auto &defs = this->defs[fun];
    for(auto block : blocks) {
        for(auto instruction : block->get_instructions()) {
            auto jump_ins = std::dynamic_pointer_cast<ir::jump>(instruction);
            auto br_ins = std::dynamic_pointer_cast<ir::br>(instruction);
            auto while_ins = std::dynamic_pointer_cast<ir::while_loop>(instruction);
            auto store_ins = std::dynamic_pointer_cast<ir::store>(instruction);
            if(jump_ins) {
                auto tar = jump_ins->get_target();
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
                s_back_trace[cond_from].push_back(block);
                n_back_trace[block].push_back(cond_from);
            }
            if(store_ins) {
                auto addr = store_ins->get_addr();
                for(auto alloc : fun->get_var_list()) {
                    if(alloc->get_var()->get_addr() == addr) {
                        defs[alloc->get_var()].push_back(block);
                        break;
                    }
                }
            }
        }
    }
    fun->set_predecessor(predecessor, s_back_trace);                          // 由于cfg要在寄存器分配中使用，所以可以将逻辑提取到这里，但是需要保存到fun中
    fun->set_nxt(nxt, n_back_trace);
}

void Passes::Mem2Reg::remove_empty_block(ptr<ir::ir_userfunc> fun) {
    std::list<std::shared_ptr<ir::ir_basicblock>>& tmp_b = fun->get_bbs_ref();
    std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>>& tmp_s = fun->get_predecessor_ref();
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

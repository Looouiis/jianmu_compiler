#include "mem2reg.hpp"

void Passes::Mem2Reg::run() {
    func_lst = compunit->usrfuncs;
    analyse_cfg_flow();
}

void Passes::Mem2Reg::analyse_cfg_flow() {
    for(auto [name, fun] : func_lst) {
        auto blocks = fun->get_bbs();
        std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> successor;
        std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> nxt;
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
                if(while_ins != nullptr) {                                          // TODO: 检查分析逻辑
                    auto tar = while_ins->get_out_block();
                    successor[tar].push_back(block);
                    nxt[block].push_back(tar);
                }
            }
        }
        fun->set_successor(successor);
        fun->set_nxt(nxt);
    }
}
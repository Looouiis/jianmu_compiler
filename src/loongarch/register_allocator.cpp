#include "register_allocator.hpp"
#include "ir/ir.hpp"
#include "parser/SyntaxTree.hpp"
#include <algorithm>
#include <iterator>
#include <memory>
#include <pstl/glue_algorithm_defs.h>
#include <unordered_map>
#include <vector>

void LoongArch::ColoringAllocator::SimplifyGraph() {
  auto conf_graph = conflictGraph;
  bool try_again = true;
  while(try_again) {
    bool changed = true;
    while(changed) {
      changed = false;
      std::vector<std::shared_ptr<ir::ir_reg>> del_list;
      for(auto [reg, vec] : conf_graph) {
        if(vec.size() < color_count) {
          s.push_back(reg);
          changed = true;
          del_list.push_back(reg);
        }
      }
      while(!del_list.empty()) {
        auto del_item = del_list.back();
        del_list.pop_back();
        for(auto tar : conf_graph[del_item]) {
          conf_graph[tar].erase(std::remove(conf_graph[tar].begin(), conf_graph[tar].end(), del_item), conf_graph[tar].end());
        }
        auto it = conf_graph.find(del_item);
        if(it != conf_graph.end()) {
          conf_graph.erase(it);
        }
      }
    }
    if(conf_graph.size()) {
      // need split
      Spill(conf_graph);
      try_again = true;
    } else {
      // have solution
      try_again = false;
      // ！！！需要将不和任何其他虚拟寄存器冲突的虚拟寄存器放进来！！！
      for(auto reg : non_conf_regs) {
        s.push_back(reg);
      }
    }
  }
}

void LoongArch::ColoringAllocator::Spill(std::unordered_map<std::shared_ptr<ir::ir_reg> ,std::vector<std::shared_ptr<ir::ir_reg>>> &conf_graph) {
  auto it = conf_graph.begin();
  auto del_item = it->first;
  auto vec = it->second;
  mappingToSpill.push_back(del_item);

  // conf_graph.erase(it);
  for(auto tar : vec) {
    conf_graph[tar].erase(std::remove(conf_graph[tar].begin(), conf_graph[tar].end(), del_item), conf_graph[tar].end());
  }
  conf_graph.erase(it);
}

void LoongArch::ColoringAllocator::BuildConflictGraph() {
  for(auto global : global_var) {
    allregs.push_back(global->obj->addr);
  }
  for(auto funcf : func->func_args) {
    allregs.push_back(funcf->addr);
  }
  for(auto block : func->bbs) {
    for(auto ins : block->instructions) {
      auto is_alloc = std::dynamic_pointer_cast<ir::alloc>(ins);
      if(is_alloc) {
        // if(is_alloc->var->dim) {
          arrobj.push_back(is_alloc->var);
          // continue;
        // }
      }

      for(auto raw_reg : ins->def_reg()) {
        auto reg = std::dynamic_pointer_cast<ir::ir_reg>(raw_reg);
        if(reg != nullptr) {
          allregs.push_back(reg);
        }
      }
    }
  }
  for(auto reg : allregs) {
    for(auto examine : allregs) {
      if(examine != reg && conflict(reg, examine)) {
        conflictGraph[reg].push_back(examine);
      }
    }
    auto it = conflictGraph.find(reg);
    if(it == conflictGraph.end()) {
      non_conf_regs.push_back(reg);
    }
  }
}

bool LoongArch::ColoringAllocator::conflict(std::shared_ptr<ir::ir_reg> r1, std::shared_ptr<ir::ir_reg> r2) {
  Pass::LiveInterval r1_i;
  Pass::LiveInterval r2_i;
  if(mappingToInterval[r1].l <= mappingToInterval[r2].l) {
    r1_i = mappingToInterval[r1];
    r2_i = mappingToInterval[r2];
  }
  else {
    r1_i = mappingToInterval[r2];
    r2_i = mappingToInterval[r1];
  }
  if(r1_i.r < r2_i.l)
    return false;
  else
    return true;
}

LoongArch::alloc_res LoongArch::ColoringAllocator::getAllocate() {
  SimplifyGraph();
  auto stk = s;
  std::vector<std::shared_ptr<ir::ir_reg>> colored;
  std::unordered_map<std::shared_ptr<ir::ir_reg>, int> color_map;
  std::vector<int> total_color;
  for(int i = 0; i < color_count; i++) total_color.push_back(i);
  while(stk.size()) {
    auto available_color = total_color;
    auto reg = stk.back();
    stk.pop_back();
    for(auto [c, color] : color_map) {
      auto it = std::find(conflictGraph[reg].begin(), conflictGraph[reg].end(), c);
      if(it != conflictGraph[reg].end()) {
        available_color.erase(std::remove(available_color.begin(), available_color.end(), color), available_color.end());
      }
    }
    if(available_color.size()) {
      mappingToReg[reg] = available_color[0] + base_reg;
      color_map[reg] = available_color[0];
    }
  }

  return alloc_res(this->mappingToReg, this->mappingToSpill, this->arrobj);
}


LoongArch::ColoringAllocator::ColoringAllocator(std::shared_ptr<ir::ir_userfunc> _func, int _base, ptr_list<ir::global_def> global_var) : func(_func), base_reg(_base), global_var(global_var)
{
  auto blocks = func->bbs;
  // for(auto block : blocks) {
  //   in[block] = {};
  //   out[block] = {};
  // }
  // 分析live_use、live_def以及确定基本块之间的前驱、后继关系
  for(auto block : blocks) {
    for(auto instruction : block->instructions) {
      // auto def = instruction->def_reg();
      // auto use = instruction->use_reg();
      // for(auto u : use) {
      //   auto it = find(live_def[block].begin(), live_def[block].end(), u);
      //   if(it == live_def[block].end()) {
      //     live_use[block].push_back(u);
      //   }
      // }
      // for(auto d : def) {
      //   auto it = find(live_def[block].begin(), live_def[block].end(), d);
      //   if(it == live_def[block].end()) {
      //     live_use[block].push_back(d);
      //   }
      //   live_def[block].push_back(d);
      // }
      auto jump_ins = std::dynamic_pointer_cast<ir::jump>(instruction);
      auto br_ins = std::dynamic_pointer_cast<ir::br>(instruction);
      auto while_ins = std::dynamic_pointer_cast<ir::while_loop>(instruction);
      if(jump_ins != nullptr) {
        auto tar = jump_ins->target;
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
        auto tar = while_ins->out_block;
        successor[tar].push_back(block);
        nxt[block].push_back(tar);
      }
    }
  }



  // 计算in、out
  // bool changed = true;
  // while(changed) {
  //   changed = false;
  //   for(auto block : blocks) {
  //     for(auto s : successor[block]) {
  //       std::vector<std::shared_ptr<ir::ir_value>> bakup = out[block];
  //       // out[block] = out[block] + in[s];
  //       std::sort(out[block].begin(), out[block].end());
  //       std::sort(in[s].begin(), in[s].end());
  //       std::vector<std::shared_ptr<ir::ir_value>> res;
  //       auto it = std::set_union(
  //         out[block].begin(), out[block].end(), 
  //         in[s].begin(), in[s].end(), std::back_inserter(res)
  //       );
  //       // out[block].resize(it - out[block].begin());
  //       out[block] = res;

  //       if(bakup != out[block])
  //         changed = true;
  //     }
  //     std::vector<std::shared_ptr<ir::ir_value>> bakup = in[block];
  //     // in[block] = live_use[block] + (out[block] - live_def[block]);
  //     std::vector<std::shared_ptr<ir::ir_value>> sub;
  //     std::sort(out[block].begin(), out[block].end());
  //     std::sort(live_def[block].begin(), live_def[block].end());
  //     std::set_difference(
  //       out[block].begin(), out[block].end(), 
  //       live_def[block].begin(), live_def[block].end(), std::back_inserter(sub)
  //     );
  //     std::sort(live_use[block].begin(), live_use[block].end());
  //     std::sort(sub.begin(), sub.end());
  //     std::vector<std::shared_ptr<ir::ir_value>> res;
  //     auto it = std::set_union(
  //       live_use[block].begin(), live_use[block].end(), 
  //       sub.begin(), sub.end(), std::back_inserter(res)
  //     );
  //     // in[block].resize(it - in[block].begin());
  //     in[block] = res;

  //     // if(bakup != in[block])
  //     //   changed = true;
  //   }
  // }


  // 计算基本块的伪线性序
  auto tmp_b = blocks;
  auto tmp_s = successor;
  auto tmp_n = nxt;
  std::vector<std::shared_ptr<ir::ir_basicblock>> lines;

  // 保证只从bb0起始，且去除了空块
  vector<std::shared_ptr<ir::ir_basicblock>> rm_vec;
  for(auto block : tmp_b) {
    if(block->name != "bb0" && tmp_s[block].size() == 0) {
      rm_vec.push_back(block);
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
  auto erased_block = tmp_b;

  while(tmp_b.size()) {
    for(auto block : tmp_b) {
      if(tmp_s[block].size() == 0) {
        for(auto child : tmp_n[block]) {
          // tmp_s[child].remove(block);
          auto new_end = std::remove(tmp_s[child].begin(), tmp_s[child].end(), block);
          tmp_s[child].erase(new_end, tmp_s[child].end());
        }

        lines.push_back(block);
        auto new_end = std::remove(tmp_b.begin(), tmp_b.end(), block);
        tmp_b.erase(new_end, tmp_b.end());
        break;
      }
    }
  }


  // 计算liveIntervals
  // 先计算行号
  int line = 0;
  for(auto block : lines) {                     // 使用lines则为伪线性序行号，erased_block则为中间代码行号
                                                                           // 虽说使用哪种行号无所谓，只要能算出生命周期即可
                                                                           // 但是使用中间代码行号（erased_block)，则会出现return处理
                                                                           // （中间代码中return处理固定在bb1？）时，生命周期倒乱的情况
    block_line_start[block] = line;
    for(auto instruction : block->instructions) {
      line++;
    }
    block_line_end[block] = line;
  }
  for(auto block_it = lines.rbegin(); block_it != lines.rend(); block_it++) {
    auto block = *block_it;
    int block_start = block_line_start[block];
    int cur_line = block_line_end[block];
    // for(auto instruction : block->instructions) {
    for(auto ins_it = block->instructions.rbegin(); ins_it != block->instructions.rend(); ins_it++) {
      auto instruction = *ins_it;
      auto x = instruction->def_reg();
      auto phi = std::dynamic_pointer_cast<ir::phi>(instruction);
      auto get = std::dynamic_pointer_cast<ir::get_element_ptr>(instruction);
      if(phi != nullptr) {
        for(auto r : x) {
          auto reg = std::dynamic_pointer_cast<ir::ir_reg>(r);
          if(reg != nullptr)
            mappingToInterval[reg].l = block_start;
        }
      }
      else {
        for(auto r : x) {
          auto reg = std::dynamic_pointer_cast<ir::ir_reg>(r);
          if(reg != nullptr) {
            if(get) {
              mappingToInterval[reg].l = cur_line;
            }
            else {
              mappingToInterval[reg].l = cur_line + 1;
            }
          }
        }
      }
      auto y = instruction->use_reg();
      if(phi != nullptr) {
        for(auto r : y) {
          auto reg = std::dynamic_pointer_cast<ir::ir_reg>(r);
          if(reg != nullptr)
            mappingToInterval[reg].r = std::max(mappingToInterval[reg].r, cur_line);
        }
      }
      else {
        for(auto r : y) {
          auto reg = std::dynamic_pointer_cast<ir::ir_reg>(r);
          if(reg != nullptr)
            mappingToInterval[reg].r = std::max(mappingToInterval[reg].r, cur_line);
        }
      }
      cur_line--;
    }
  }

  // ir::ir_basicblock a;
  this->BuildConflictGraph();
}

LoongArch::alloc_res LoongArch::ColoringAllocator::run() {
  return this->getAllocate();
}

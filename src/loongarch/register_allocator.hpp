#pragma once
#include <memory>
#include<unordered_map>
#include <queue>
#include <set>
#include <utility>
#include <vector>
#include "ir/ir.hpp"
#include "loongarch/arch.hpp"
#include "parser/SyntaxTree.hpp"


namespace LoongArch {

struct Reg;
struct Function;
struct alloc_res;

// no coalescing
class ColoringAllocator {
  std::shared_ptr<ir::ir_userfunc> func;
  std::unordered_map<std::shared_ptr<ir::ir_reg> ,std::vector<std::shared_ptr<ir::ir_reg>>> conflictGraph;
  std::unordered_map<std::shared_ptr<ir::ir_reg>,Pass::LiveInterval> mappingToInterval;                         // interval:寄存器的活跃区间
  // std::unordered_map<std::shared_ptr<ir::ir_reg>,int> mappingToReg;
  std::unordered_map<std::shared_ptr<ir::ir_reg>, Reg> mappingToReg;
  
  std::unordered_map<std::shared_ptr<ir::ir_basicblock>, std::vector<std::shared_ptr<ir::ir_value>>> in;
  std::unordered_map<std::shared_ptr<ir::ir_basicblock>, std::vector<std::shared_ptr<ir::ir_value>>> out;
  std::unordered_map<std::shared_ptr<ir::ir_basicblock>, std::vector<std::shared_ptr<ir::ir_value>>> live_use;
  std::unordered_map<std::shared_ptr<ir::ir_basicblock>, std::vector<std::shared_ptr<ir::ir_value>>> live_def;
  std::unordered_map<std::shared_ptr<ir::ir_basicblock>, std::vector<std::shared_ptr<ir::ir_basicblock>>> successor;
  std::unordered_map<std::shared_ptr<ir::ir_basicblock>, std::vector<std::shared_ptr<ir::ir_basicblock>>> nxt;
  std::unordered_map<std::shared_ptr<ir::ir_basicblock>, int> block_line_start;
  std::unordered_map<std::shared_ptr<ir::ir_basicblock>, int> block_line_end;
  std::vector<std::shared_ptr<ir::ir_reg>> s;
  std::vector<std::shared_ptr<ir::ir_reg>> allregs;
  std::vector<std::shared_ptr<ir::ir_memobj>> arrobj;
  std::vector<std::shared_ptr<ir::ir_reg>> non_conf_regs;
  std::vector<std::shared_ptr<ir::ir_reg>> mappingToSpill;
  ptr_list<ir::global_def> global_var;
  vector<Reg> i_color = {Reg{12}, Reg{13}};
  vector<Reg> f_color = {
    Reg(8, FLOAT),
    Reg(9, FLOAT),
    Reg(10, FLOAT),
    Reg(11, FLOAT),
    Reg(12, FLOAT),
    Reg(13, FLOAT),
    Reg(14, FLOAT),
    // Reg(15, FLOAT),
    // Reg(16, FLOAT),
    // Reg(17, FLOAT),
    // Reg(18, FLOAT),
    // Reg(19, FLOAT),
    Reg(20, FLOAT),
    Reg(21, FLOAT),
    Reg(22, FLOAT),
    Reg(23, FLOAT)
  };
  vector<Reg> fb_color {
    Reg(0, FBOOL),
    Reg(1, FBOOL),
    Reg(2, FBOOL),
    Reg(3, FBOOL),
    Reg(4, FBOOL),
    Reg(5, FBOOL),
    Reg(6, FBOOL),
    Reg(7, FBOOL),
  };
  int color_count = 3;
  int base_reg;
  bool conflict(std::shared_ptr<ir::ir_reg> r1, std::shared_ptr<ir::ir_reg> r2);

  void SimplifyGraph();
  void Spill(std::unordered_map<std::shared_ptr<ir::ir_reg> ,std::vector<std::shared_ptr<ir::ir_reg>>> &conf_graph);
  void BuildConflictGraph();
  // std::pair<std::unordered_map<std::shared_ptr<ir::ir_reg>,int>, std::vector<std::shared_ptr<ir::ir_reg>>> getAllocate();
  alloc_res getAllocate();
  std::function<bool(const ptr<ir::ir_reg>)> is_target;
  Rtype dealing;
 public:
  ColoringAllocator(std::shared_ptr<ir::ir_userfunc> _func, int base_reg, ptr_list<ir::global_def> global_var);
  // std::pair<std::unordered_map<std::shared_ptr<ir::ir_reg>,int>, std::vector<std::shared_ptr<ir::ir_reg>>> run();
  alloc_res run(Rtype target);
};

struct alloc_res {
  std::unordered_map<std::shared_ptr<ir::ir_reg>, Reg> mapping_to_reg;
  std::vector<std::shared_ptr<ir::ir_reg>> mapping_to_spill;
  std::vector<std::shared_ptr<ir::ir_memobj>> arrobj;
public:
  alloc_res(std::unordered_map<std::shared_ptr<ir::ir_reg>, Reg> mapping_to_reg, std::vector<std::shared_ptr<ir::ir_reg>> mapping_to_spill, std::vector<std::shared_ptr<ir::ir_memobj>> arrobj) :
  mapping_to_reg(mapping_to_reg), mapping_to_spill(mapping_to_spill), arrobj(arrobj) {}
};

}  // namespace Archriscv
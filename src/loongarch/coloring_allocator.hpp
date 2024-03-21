#ifndef COLORING_ALLOCATOR
#define COLORING_ALLOCATOR

#include "ir/ir.hpp"
#include "loongarch/register_allocator.hpp"
#include "parser/SyntaxTree.hpp"
#include <unordered_map>
#include <unordered_set>
namespace LoongArch {

class ColoringAllocator {
private:
    ptr<ir::ir_userfunc> fun;
    std::unordered_map<ptr<ir::ir_instr>, std::unordered_set<ptr<ir::ir_value>>> live_in;
    std::unordered_map<ptr<ir::ir_instr>, std::unordered_set<ptr<ir::ir_value>>> live_out;
    void analyse_cfg_flow();
    void analyse_live();
public:
    ColoringAllocator(ptr<ir::ir_userfunc> fun, int base_reg, ptr_list<ir::global_def> global_var);
    alloc_res run(Rtype target);
};

};

#endif
#ifndef COLORING_ALLOCATOR
#define COLORING_ALLOCATOR

#include "ir/ir.hpp"
#include "loongarch/arch.hpp"
#include "loongarch/register_allocator.hpp"
#include "parser/SyntaxTree.hpp"
#include <set>
#include <unordered_map>
#include <unordered_set>
namespace LoongArch {

class ColoringAllocator : public RegisterAllocator {
public:
    ptr<ir::ir_visitor> printer;
private:
    ptr<ir::ir_userfunc> fun;
    std::unordered_map<ptr<ir::ir_instr>, std::unordered_set<ptr<ir::ir_reg>>> live_in;
    std::unordered_map<ptr<ir::ir_instr>, std::unordered_set<ptr<ir::ir_reg>>> live_out;
    std::unordered_map<std::shared_ptr<ir::ir_reg>, Reg> mapping_to_reg;
    std::set<ptr<ir::ir_reg>> spill_set;
    std::unordered_map<ptr<ir::ir_reg>, std::unordered_set<ptr<ir::ir_reg>>> ig;
    vector<Reg> i_color = {Reg{12}, Reg{13}, Reg{14}, Reg{5}, Reg{6}, Reg{7}, Reg{8}, Reg{9}, Reg{10}, Reg{11}};
    // vector<Reg> i_color = {Reg{12}, Reg{13}, Reg{14}};
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
    vector<Reg> using_color;
    std::function<bool(const ptr<ir::ir_reg>)> is_target;
    Rtype dealing;
    // std::vector<std::shared_ptr<ir::ir_reg>> mapping_to_spill;
    // std::vector<std::shared_ptr<ir::ir_memobj>> arrobj;
    void analyse_cfg_flow();
    void clear();
    void analyse_live();
    void build_ig();
    // bool kempe_opt();
    bool kempe();
    ptr<ir::ir_reg> remove(std::unordered_map<ptr<ir::ir_reg>, std::unordered_set<ptr<ir::ir_reg>>> &g, ptr<ir::ir_reg> del_item);
    bool assign_color(ptr<ir::ir_reg> node);
    bool rewrite();
    
public:
    ColoringAllocator(ptr<ir::ir_userfunc> fun, int base_reg, ptr_list<ir::global_def> global_var);
    alloc_res run(Rtype target) override final;
};

};

#endif
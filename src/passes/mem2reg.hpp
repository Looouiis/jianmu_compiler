#ifndef PASSES_MEM2REG
#define PASSES_MEM2REG

#include "ir/ir.hpp"
#include "passes/pass.hpp"
#include <set>
#include <unordered_map>
namespace Passes {

class Mem2Reg : public Pass {
    std::list<std::pair<std::string, ptr<ir::ir_userfunc>>> func_lst;
    std::unordered_map<ptr<ir::ir_userfunc>, std::unordered_map<ptr<ir::ir_basicblock>, std::set<ptr<ir::ir_basicblock>>>> dom;
    void remove_empty_block(ptr<ir::ir_userfunc> fun);
    void analyse_cfg_flow(ptr<ir::ir_userfunc> fun);
    void analyse_dom_relation(ptr<ir::ir_userfunc> fun);
public:
    Mem2Reg(ptr<ir::ir_module> compunit) : Pass(compunit) {}
    virtual void run() override final;
};

}

#endif
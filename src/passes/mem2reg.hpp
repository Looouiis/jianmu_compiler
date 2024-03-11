#ifndef PASSES_MEM2REG
#define PASSES_MEM2REG

#include "ir/ir.hpp"
#include "passes/pass.hpp"
#include <unordered_map>
namespace Passes {

class Mem2Reg : public Pass {
    std::list<std::pair<std::string, ptr<ir::ir_userfunc>>> func_lst;
    void analyse_cfg_flow();
public:
    Mem2Reg(ptr<ir::ir_module> compunit) : Pass(compunit) {}
    virtual void run() override final;
};

}

#endif
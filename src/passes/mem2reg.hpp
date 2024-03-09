#ifndef PASSES_MEM2REG
#define PASSES_MEM2REG

#include "passes/pass.hpp"
namespace Passes {

class Mem2Reg : public Pass {
public:
    Mem2Reg(ptr<ir::ir_module> compunit) : Pass(compunit) {}
    virtual void run() override final;
};

}

#endif
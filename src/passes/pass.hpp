#ifndef PASSES_PASS
#define PASSES_PASS

#include "ir/ir.hpp"
namespace Passes {

enum PassType {
    MEM2REG
};

class Pass {
    ptr<ir::ir_module> compunit;
public:
    Pass(ptr<ir::ir_module> compunit) : compunit(compunit) {}
    virtual void run() = 0;
};

}

#endif
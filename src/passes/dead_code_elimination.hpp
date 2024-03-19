#ifndef PASSES_DEAD_CODE_ELIMINATION
#define PASSES_DEAD_CODE_ELIMINATION

#include "passes/pass.hpp"

namespace Passes {

class DeadCodeElimination : public Passes::Pass {
public:
    DeadCodeElimination(ptr<ir::ir_module> compunit) : Pass(compunit) {}
    virtual void run() override final;
};

};

#endif
#ifndef PASSES_FUNCTION_INFO
#define PASSES_FUNCTION_INFO

#include "ir/ir.hpp"
#include "passes/pass.hpp"
namespace Passes {

class FunctionInfo : Pass {
    std::list<std::pair<std::string,std::shared_ptr<ir::ir_userfunc>>> func_lst;
public:
    FunctionInfo(ptr<ir::ir_module> compunit) : Pass(compunit) {}
    virtual void run() override final;
};

};

#endif
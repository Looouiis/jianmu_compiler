#include "passes/function_info.hpp"

void Passes::FunctionInfo::run() {
    this->func_lst = compunit->usrfuncs;
    for(auto [name, fun] : func_lst) {

    }
}
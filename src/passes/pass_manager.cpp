#include "ir/ir.hpp"
#include "passes/function_info.hpp"
#include "passes/pass_type.hpp"
#include "pass_manager.hpp"
#include "passes/dead_code_elimination.hpp"
#include "passes/mem2reg.hpp"
#include "passes/pass.hpp"
#include "passes/tail_call.hpp"
#include <memory>

void Passes::PassManager::add_pass(PassType pass_type) {
    switch (pass_type) {
        case MEM2REG: {
            scheduled_passes.push_back(std::make_shared<Passes::Mem2Reg>(this->compunit));
            break;
        }
        case DEAD_CODE_ELIMINATION: {
            scheduled_passes.push_back(std::make_shared<Passes::DeadCodeElimination>(this->compunit));
            break;
        }
        case FUNCTION_INFO: {
            scheduled_passes.push_back(std::make_shared<Passes::FunctionInfo>(this->compunit));
            break;
        }
        case TAIL_CALL: {
            scheduled_passes.push_back(std::make_shared<Passes::TailCall>(this->compunit));
            break;
        }
    }
}

void Passes::PassManager::run() {
    if(printer) {
        this->compunit->accept(*printer);
    }
    for(auto pass : scheduled_passes) {
        if(printer) {
            std::cout << "-----------------------" << "PASS" <<" ----------------------" << std::endl;
        }
        pass->run();
        if(printer) {
            this->compunit->accept(*printer);
        }
    }
}

#include "pass_manager.hpp"
#include "passes/mem2reg.hpp"
#include "passes/pass.hpp"
#include <memory>

void Passes::PassManager::add_pass(PassType pass_type) {
    switch (pass_type) {
        case MEM2REG: {
            scheduled_passes.push_back(std::make_shared<Passes::Mem2Reg>(this->compunit));
            break;
        }
    }
}

void Passes::PassManager::run() {
    for(auto pass : scheduled_passes) {
        pass->run();
    }
}

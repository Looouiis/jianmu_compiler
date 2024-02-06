#include "ir/ir.hpp"
#include "ir/irbuilder.hpp"
#include "loongarch/arch.hpp"
#include "loongarch/inst.hpp"
#include <memory>
// #include "loongarch/register_allocator.hpp"
namespace LoongArch {

class ProgramBuilder : public ir::ir_visitor {
public:
    virtual void visit(ir::ir_reg & node) override final;  
    virtual void visit(ir::ir_constant & node) override final;  
    virtual void visit(ir::ir_basicblock & node) override final;  
    virtual void visit(ir::ir_module & node) override final;  
    virtual void visit(ir::ir_userfunc & node) override final;  
    virtual void visit(ir::store & node) override final;  
    virtual void visit(ir::jump & node) override final;  
    virtual void visit(ir::br & node) override final;  
    virtual void visit(ir::ret & node) override final;  
    virtual void visit(ir::load & node) override final;  
    virtual void visit(ir::alloc & node) override final;  
    virtual void visit(ir::phi & node) override final;  
    virtual void visit(ir::unary_op_ins & node) override final ;
    virtual void visit(ir::binary_op_ins & node) override final;  
    virtual void visit(ir::cmp_ins& node) override final;  
    virtual void visit(ir::logic_ins & node) override final;
    virtual void visit(ir::get_element_ptr& node) override final;
    virtual void visit(ir::while_loop& node) override final;
    virtual void visit(ir::break_or_continue& node) override final;
    std::shared_ptr<Program> prog;
    // std::vector<std::shared_ptr<ir::ir_reg>> loaded;
protected:
    std::shared_ptr<Function> cur_func;
    std::shared_ptr<Block> cur_block, next_block;
    std::string func_name;     
    std::shared_ptr<IrMapping> cur_mapping;

    /*
        t0-t8寄存器分配：
        1. t0-t2三个作为可染色分配的寄存器（通过register_allocator.hpp中的base_reg和color_count进行配
            置，base_reg配置可染色分配寄存器起始位置，color_count配置寄存器数），
        2. t3、t4作为立即数加载寄存器（下方的const_reg_l和const_reg_r分别配置两个寄存器），
        3. t5、t6、t7作为spill变量使用的寄存器（从内存读入寄存器-》执行指令-》写回内存）（下方spill_base
            进行配置，从spill_base开始的三个寄存器）
        （其实要使用全部t寄存器的话可染色寄存器应该分配4个，但是这样的话就没有测试用例触发冲突图不可着色的
        情况了，就没法检验spill的逻辑了）
    */
    Reg const_reg_l = Reg{15};      // 对应源操作数1
    Reg const_reg_r = Reg{16};      // 对应源操作数2
    Reg using_reg = const_reg_l;
    Reg pass_reg;
    int spill_base = 17;
};
} // namespace archLA


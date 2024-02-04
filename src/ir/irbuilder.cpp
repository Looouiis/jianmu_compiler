#include "ir/irbuilder.hpp"
#include "ir/ir.hpp"
#include "parser/SyntaxTree.hpp"
#include <memory>

void ir::IrBuilder::visit(ast::compunit_syntax &node)
{
    /*
        init global variable
    */

    this->compunit = std::make_shared<ir::ir_module>();
    /*
        register lib functions
    */

    /*
        visit children
    */
    for(auto & i : node.global_defs)
        i->accept(*this);
}

void ir::IrBuilder::visit(ast::func_def_syntax &node){
    auto rettype = node.rettype;
    string name = node.name;
    
    this->cur_block = nullptr;
    this->cur_func = nullptr;
    this->cur_func_name = "";
    this->found_main = false;
    this->return_bb = nullptr;
    this->return_value.clear();

    /*
        first we should register this function in symbol table
    */
    cur_func = compunit->new_func(name);
    this->functions.push_func(name,cur_func);

    /*
        next we should deal with entry module
        in this module, we should insert instructions which is responsible for args.  
    */
    cur_func->entry = cur_func->new_block();
    cur_block = cur_func->entry;
    if(name == "main"){
        this->found_main = true;
    }
    return_bb = cur_func->new_block();


    this->scope.enter();
    for(auto a : node.params) {
        a->accept(*this);
    }
    
    /*
        deal with block
    */
    node.body->accept(*this);
    /*
        deal with ret
    */
    switch (rettype)
    {
    case vartype::VOID:
        {
            cur_block->push_back(std::make_shared<ir::jump>(return_bb));
            auto ret_value = std::make_shared<ir::ir_constant>(0);
            return_bb->push_back(std::make_shared<ir::ret>(ret_value,false));
            //false express non return
        }
        break;
    default:
        {
            auto ret_val = std::make_shared<ir::ir_constant>(0);
            return_value.emplace_back(ret_val,cur_block);
            cur_block->push_back(std::make_shared<ir::jump>(return_bb));
            /*
                set a default value to last block
            */
            /*
                add a phi inst
            */
            // auto ret_dst = cur_func->new_reg(vartype::INT);
            auto ret_dst = cur_func->new_reg(rettype);
            auto phi_inst = std::make_shared<ir::phi>(ret_dst);
            phi_inst->uses = return_value;
            return_bb->push_back(phi_inst);
            return_bb->push_back(std::make_shared<ir::ret>(ret_dst,true));
        }
        break;
    }
    this->scope.exit();
}

void ir::IrBuilder::visit(ast::rel_cond_syntax &node)           // self1
{
    node.lhs->accept(*this);
    auto exp1 = pass_value;
    node.rhs->accept(*this);
    auto exp2 = pass_value;
    auto dst = cur_func->new_reg(vartype::INT);
    cur_block->push_back(std::make_shared<ir::cmp_ins>(dst, exp1, exp2, node.op));
    this->pass_value = dst;
}

void ir::IrBuilder::visit(ast::logic_cond_syntax &node)         // self2
{
    node.lhs->accept(*this);
    auto exp1 = pass_value;
    node.rhs->accept(*this);
    auto exp2 = pass_value;
    auto dst = cur_func->new_reg(vartype::INT);
    cur_block->push_back(std::make_shared<ir::logic_ins>(dst, exp1, exp2, node.op));
    this->pass_value = dst;
}

void ir::IrBuilder::visit(ast::binop_expr_syntax &node)
{
    /*
        the output of binary expression is a value, not a condition
    */
    node.lhs->accept(*this);
    auto exp1=pass_value;
    node.rhs->accept(*this);
    auto exp2=pass_value;
    auto dst = cur_func->new_reg(vartype::INT);
    cur_block->push_back(std::make_shared<ir::binary_op_ins>(dst,exp1,exp2,node.op));
    this->pass_value=dst;
}

void ir::IrBuilder::visit(ast::unaryop_expr_syntax &node)           // self3
{
    node.rhs->accept(*this);
    auto exp2 = pass_value;
    auto dst = cur_func->new_reg(vartype::INT);
    cur_block->push_back(std::make_shared<ir::unary_op_ins>(dst, exp2, node.op));
    this->pass_value = dst;
}

void ir::IrBuilder::visit(ast::lval_syntax &node)                   // self4---------------------重点检查
{
    // auto value = map[node.name];
    // pass_value = value;
    // auto var = this->scope.find_var(node.name);
    // auto old_reg = var->get_addr();
    // auto new_reg = cur_func->new_obj(node.name)->get_addr();
    // cur_block->push_back(std::make_shared<ir::load>(value, new_reg));
    auto var = this->scope.find_var(node.name);
    auto dst = cur_func->new_reg(node.restype);
    cur_block->push_back(std::make_shared<ir::load>(dst, var->get_addr()));
    this->pass_value = dst;
}



void ir::IrBuilder::visit(ast::literal_syntax &node)
{
    ptr<ir::ir_constant> constant;
    if(node.restype == vartype::INT) {
        constant = std::make_shared<ir::ir_constant>(node.intConst);
    }
    else {
        constant = std::make_shared<ir::ir_constant>(node.floatConst);
    }
    pass_value = constant;
}

void ir::IrBuilder::visit(ast::var_def_stmt_syntax &node)       // self5
{
    auto obj = cur_func->new_obj(node.name);
    if(node.dimension) {
        obj->dim = node.dimension;
    }
    this->scope.push_var(node.name, obj);
    cur_block->push_back(std::make_shared<ir::alloc>(obj));
    if(node.initializer != nullptr) {
        pass_list.clear();
        node.initializer->accept(*this);
        if(pass_list.empty()) {
            auto ini_value = pass_value;
            cur_block->push_back(std::make_shared<ir::store>(obj->get_addr(), ini_value));
        }
        else {
            for(int i = 0; i < pass_list.size(); i++) {
                auto dst = cur_func->new_reg(obj->get_addr()->type);
                cur_block->push_back(std::make_shared<ir::get_element_ptr>(obj, dst, i));
                cur_block->push_back(std::make_shared<ir::store>(dst, pass_list[i]));
            }
        }
        // map[node.name] = ptr<ir::ir_value>(pass_value);
    }
    else {
        // map[node.name] = std::make_shared<ir::ir_constant>(0);
    }
}

void ir::IrBuilder::visit(ast::assign_stmt_syntax &node)        // self6
{
    node.value->accept(*this);
    auto value = pass_value;
    auto obj = this->scope.find_var(node.target->name);
    cur_block->push_back(std::make_shared<ir::store>(obj->get_addr(),value));
    // map[node.target->name] = ptr<ir::ir_value>(pass_value);
}

void ir::IrBuilder::visit(ast::block_syntax &node)
{
    //由于我们的函数没有参数，所以，直接让block来处理scope的事情
    // this->scope.enter();
    for(auto i :node.body)
    {
        i->accept(*this);
    }
    // this->scope.exit();
}

void ir::IrBuilder::visit(ast::if_stmt_syntax &node)
{
    node.pred->accept(*this);
    auto judge_ret = pass_value;
    auto bb_bak = cur_block;
    auto bb_nxt = cur_func->new_block();
    auto then_bb = cur_func->new_block();
    auto else_bb = cur_func->new_block();
    if(node.else_body != nullptr && node.then_body != nullptr) {
        cur_block->push_back(std::make_shared<ir::br>(judge_ret, then_bb, else_bb));
        this->cur_block = this->cur_func->new_block();
    }
    else if(node.then_body != nullptr) {
        // cur_block->push_back(std::make_shared<ir::jump>(then_bb));
        cur_block->push_back(std::make_shared<ir::br>(judge_ret, then_bb, bb_nxt));
    }
    else if(node.else_body != nullptr) {
        // cur_block->push_back(std::make_shared<ir::jump>(else_bb));
        cur_block->push_back(std::make_shared<ir::br>(judge_ret, bb_nxt, else_bb));
    }
    if(node.then_body != nullptr){
        cur_block = then_bb;
        node.then_body->accept(*this);
        cur_block->push_back(std::make_shared<ir::jump>(bb_nxt));
    }
    if(node.else_body != nullptr) {
        cur_block = else_bb;
        node.else_body->accept(*this);
        cur_block->push_back(std::make_shared<ir::jump>(bb_nxt));
    }
    cur_block = bb_nxt;
    // auto then_bb = cur_func->new_block();
    // cur_block->push_back(std::make_shared<ir::jump>(then_bb));
    // node.then_body->accept(*this);
    // auto else_bb = cur_func->new_block();
    // node.then_body->accept(*this);
    // node.else_body->accept(*this);
}

void ir::IrBuilder::visit(ast::return_stmt_syntax &node)
{

    if(cur_func->rettype != vartype::VOID)//有返回值
    {
        node.exp->accept(*this);
        //放置好返回值和来源BB后跳转到return_bb
        return_value.emplace_back(pass_value,cur_block);
        cur_block->push_back(std::make_shared<ir::jump>(return_bb));
    }
    else//没有返回值
    {
        //直接跳转到return的BB
        auto jmp_inst = std::make_shared<ir::jump>(return_bb);
        cur_block->push_back(jmp_inst);
    }
    //对BB进行划分，这个BB用于防止return后面的部分（这部分永远不会被执行到）
    this->cur_block = this->cur_func->new_block();
}

void ir::IrBuilder::visit(ast::var_decl_stmt_syntax &node)
{
    for(auto i :node.var_def_list)
    {
        i->accept(*this);
    }
}

void ir::IrBuilder::visit(ast::func_f_param_syntax &node) {
    ptr<ir_memobj> mem;
    // if(!node.dimension) {
    //     auto reg = this->cur_func->new_reg(node.accept_type);
    //     // int size = 0;
    //     // for(auto a : node.dimension->dimensions) {
    //     //     a->calc_res();
    //     // }
    //     mem = std::make_shared<ir_memobj>(node.name, reg, i32_size);
    // }
    // else {
        mem = this->cur_func->new_obj(node.name);
    // }
    if(node.dimension) {
        mem->dim = node.dimension;
    }
    this->scope.push_var(node.name, mem);
    this->cur_func->func_args.push_back(mem);
}
void ir::IrBuilder::visit(ast::var_dimension_syntax &node) {}
void ir::IrBuilder::visit(ast::exp_stmt_syntax &node) {}
void ir::IrBuilder::visit(ast::while_stmt_syntax &node) {}
void ir::IrBuilder::visit(ast::empty_stmt_syntax &node) {}
void ir::IrBuilder::visit(ast::break_stmt_syntax &node) {}
void ir::IrBuilder::visit(ast::continue_stmt_syntax &node) {}
void ir::IrBuilder::visit(ast::init_syntax &node) {
    if(node.is_array) {
        // pass_list.clear();
        // for(auto a : node.initializer) {
        //     a->accept(*this);
        //     pass_list.push_back(pass_value);
        // }
        for(int i = 0; i < node.initializer.size() ; i++) {
            // if(i < node.transed_size) {
                node.initializer[i]->accept(*this);
                if(pass_value != nullptr) {
                    pass_list.push_back(pass_value);
                }
            // }
            // else {
                // pass_list.push_back(std::make_shared<ir_constant>(0));
            // }
        }
        for(int i = node.initializer.size(); i < node.transed_size; i++) {
            pass_list.push_back(std::make_shared<ir_constant>(0));
        }
        pass_value = nullptr;
    }
    else {
        node.initializer.front()->accept(*this);
    }
}
void ir::IrBuilder::visit(ast::func_call_syntax &node) {}
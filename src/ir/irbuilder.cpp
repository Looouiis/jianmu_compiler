#include "ir/irbuilder.hpp"
#include "ir/ir.hpp"
#include "parser/SyntaxTree.hpp"
#include <cstdlib>
#include <memory>
#include <unordered_map>

extern ast::SyntaxTree syntax_tree;

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
        if(compunit->init_block) {
            ptr_list<ir::ir_value> param = {};
            cur_block->push_back(std::make_shared<ir::func_call>(compunit->global_init_func->name, param, vartype::VOID));
        }
    }
    return_bb = cur_func->new_block();


    this->scope.enter();
    for(auto a : node.params) {
        a->accept(*this);
    }
    cur_func->rettype = rettype;
    
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
            float fz = 0.0f;
            int z = 0;
            ptr<ir::ir_constant> ret_val;
            if(rettype == vartype::FLOAT) {
                ret_val = std::make_shared<ir::ir_constant>(fz);
            }
            else {
                ret_val = std::make_shared<ir::ir_constant>(z);
            }
            ret_val->type = rettype;
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
    auto dst = cur_func->new_reg(node.restype);
    cur_block->push_back(std::make_shared<ir::binary_op_ins>(dst,exp1,exp2,node.op));
    this->pass_value=dst;
}

void ir::IrBuilder::visit(ast::unaryop_expr_syntax &node)           // self3
{
    node.rhs->accept(*this);
    auto exp2 = pass_value;
    auto dst = cur_func->new_reg(pass_type);
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
    std::unordered_map<vartype, vartype> reflect = {{vartype::FLOAT, vartype::FLOATADDR}, {vartype::INT, vartype::INTADDR}};
    std::unordered_map<vartype, vartype> reflect_back = {{vartype::FLOATADDR, vartype::FLOAT}, {vartype::INTADDR, vartype::INT}};  //处理左值的类型问题
    
    if(cur_func) {
        auto var = this->scope.find_var(node.name);
        node.restype = reflect_back[var->addr->type];
        pass_type = node.restype;
        if(var->dim) {
            // auto element_ptr = cur_func->new_reg(vartype::INTADDR);
            auto element_ptr = cur_func->new_reg(var->addr->type);
            ptr_list<ir::ir_value> dim;
            if(node.dimension) {
                int var_size = var->dim->dimensions.size();
                if(!var->dim->has_first_dim) {
                    var_size++;
                }
                for(auto dimension : node.dimension->dimensions) {
                    dimension->accept(*this);
                    dim.push_back(pass_value);
                }
                if(node.dimension->dimensions.size() < var_size) {
                    cur_block->push_back(std::make_shared<get_element_ptr>(var, element_ptr, dim));
                    pass_value = element_ptr;
                    // return;
                }
                else if(node.dimension->dimensions.size() == var_size) {
                    auto dst = cur_func->new_reg(node.restype);
                    cur_block->push_back(std::make_shared<get_element_ptr>(var, element_ptr, dim));
                    cur_block->push_back(std::make_shared<ir::load>(dst, element_ptr));
                    this->pass_value = dst;
                }
                else {
                    abort();
                }
            }
            else {
                cur_block->push_back(std::make_shared<get_element_ptr>(var, element_ptr, dim));
                pass_value = element_ptr;
                // return;
            }
            // cur_block->push_back(std::make_shared<get_element_ptr>(var, element_ptr, dim));
            // cur_block->push_back(std::make_shared<load>(dst, element_ptr));
        }
        else {
            if(var->get_addr()->type == vartype::INTADDR || var->get_addr()->type == vartype::FLOATADDR) {
                auto dst = cur_func->new_reg(node.restype);
                cur_block->push_back(std::make_shared<ir::load>(dst, var->get_addr()));
                this->pass_value = dst;
            }
            else {
                this->pass_value = var->get_addr();
            }
        }
        // if(node.dimension) {
        //     auto element_ptr = cur_func->new_reg(vartype::INTADDR);
        //     ptr_list<ir::ir_value> dim;
        //     for(auto dimension : node.dimension->dimensions) {
        //         dimension->accept(*this);
        //         dim.push_back(pass_value);
        //     }
        //     cur_block->push_back(std::make_shared<get_element_ptr>(var, element_ptr, dim));
        //     cur_block->push_back(std::make_shared<load>(dst, element_ptr));
        // }
        // else {
        //     cur_block->push_back(std::make_shared<ir::load>(dst, var->get_addr()));
        // }
    }
    else {
        auto const_ini = syntax_tree.find(node.name);
        if(const_ini) {
            if(node.dimension) {
                ptr<ast::init_syntax> ini_pointer = const_ini;
                for(auto it = node.dimension->dimensions.begin(); it != node.dimension->dimensions.end(); it++) {
                    auto tmp = ini_pointer->initializer[(*it)->calc_res()];
                    ini_pointer = std::dynamic_pointer_cast<ast::init_syntax>(tmp);
                    if(!ini_pointer) {
                        abort();
                    }
                }
                ini_pointer->initializer.front()->accept(*this);
            }
            else {
                const_ini->initializer.front()->accept(*this);
            }
        }
        else {
            pass_value = nullptr;
        }
    }
}



void ir::IrBuilder::visit(ast::literal_syntax &node)
{
    ptr<ir::ir_constant> constant;
    if(node.restype == vartype::INT) {
        pass_type = vartype::INT;
        constant = std::make_shared<ir::ir_constant>(node.intConst);
    }
    else {
        pass_type = vartype::FLOAT;
        constant = std::make_shared<ir::ir_constant>(node.floatConst);
    }
    constant->type = node.restype;
    pass_value = constant;
}

void ir::IrBuilder::global_init(ptr<ir::global_def> global, ptr<ast::init_syntax> init) {
    if(!init)
        return;
    if(!init->is_array) {
        init->initializer.front()->accept(*this);
        if(pass_value) {
            global->init_val.push_back(pass_value);
        }
        else {
            auto zero = std::make_shared<ir::ir_constant>(global->obj->addr->type == vartype::INT ? 0 : 0.0f);
            std::pmr::unordered_map<vartype, vartype> addr2obj = {{vartype::INTADDR, vartype::INT}, {vartype::FLOATADDR, vartype::FLOAT}};
            zero->type = addr2obj[global->obj->addr->type];
            global->init_val.push_back(zero);
            auto backup = this->cur_func;
            auto backup_block = this->cur_block;
            this->cur_func = compunit->global_init_func;
            if(!compunit->init_block) {
                compunit->init_block = compunit->global_init_func->new_block();
                compunit->global_init_func->set_retype(vartype::VOID);
                compunit->init_block->push_back(std::make_shared<ir::ret>(nullptr, false));
            }
            auto ret = compunit->init_block->pop_back();
            this->cur_block = compunit->init_block;
            init->initializer.front()->accept(*this);
            auto ini_val = pass_value;
            auto obj = global->obj;
            cur_block->push_back(std::make_shared<ir::store>(obj->get_addr(), ini_val));
            cur_block->push_back(ret);
            this->cur_func = backup;
            this->cur_block = backup_block;
            // compunit->global_init_func->new_reg(vartype type)
        }
        return;
    }
    for(auto raw : init->initializer) {
        auto ini = std::dynamic_pointer_cast<ast::init_syntax>(raw);
        global_init(global, ini);
    }
}

void ir::IrBuilder::visit(ast::var_def_stmt_syntax &node)       // self5
{
    if(cur_func) {
        auto obj = cur_func->new_obj(node.name, node.restype);
        int total_cnt = 1;
        if(node.dimension) {
            obj->dim = node.dimension;
            for(auto dim : node.dimension->dimensions) {
                total_cnt *= dim->calc_res();
            }
        }
        this->scope.push_var(node.name, obj);
        cur_block->push_back(std::make_shared<ir::alloc>(obj));
        if(node.initializer != nullptr) {
            // pass_list.clear();
            // node.initializer = obj
            pass_obj = obj;
            node.initializer->accept(*this);
            // if(pass_list.empty()) {
            //     auto ini_value = pass_value;
            //     cur_block->push_back(std::make_shared<ir::store>(obj->get_addr(), ini_value));
            // }
            // else {
            //     for(int i = 0; i < pass_list.size(); i++) {
            //         auto dst = cur_func->new_reg(obj->get_addr()->type);
            //         cur_block->push_back(std::make_shared<ir::get_element_ptr>(obj, dst, i));
            //         cur_block->push_back(std::make_shared<ir::store>(dst, pass_list[i]));
            //     }
            //     auto zero = std::make_shared<ir::ir_constant>(0);
            //     for(int i = pass_list.size(); i < total_cnt; i++) {
            //         auto dst = cur_func->new_reg(obj->get_addr()->type);
            //         cur_block->push_back(std::make_shared<ir::get_element_ptr>(obj, dst, i));
            //         cur_block->push_back(std::make_shared<ir::store>(dst, zero));
            //     }
            // }
            // map[node.name] = ptr<ir::ir_value>(pass_value);
        }
        // else {
        //     map[node.name] = std::make_shared<ir::ir_constant>(0);
        // }
    }
    else {
        ptr<ir::ir_value> init_val = nullptr;
        std::unordered_map<vartype, vartype> reflect = {{vartype::FLOAT, vartype::FLOATADDR}, {vartype::INT, vartype::INTADDR}};
        auto def = this->compunit->new_global(node.name, reflect[node.restype]);
        auto obj = def->get_obj();
        if(node.dimension) {
            obj->dim = node.dimension;
        }
        // if(node.initializer) {
        //     pass_obj = obj;
        //     node.initializer->accept(*this);
        //     init_val = pass_value;
        // }
        global_init(def, node.initializer);
        this->scope.push_global(node.name, def);
    }
}

void ir::IrBuilder::visit(ast::assign_stmt_syntax &node)        // self6
{
    node.value->accept(*this);
    auto value = pass_value;
    auto obj = this->scope.find_var(node.target->name);
    if(!obj->addr->is_global) {
        cur_block->push_back(std::make_shared<ir::store>(obj->get_addr(),value));
        // map[node.target->name] = ptr<ir::ir_value>(pass_value);
    }
    // abort();     // 根据cpp中的处理方式，不是abort而是忽略二次赋值
}

void ir::IrBuilder::visit(ast::block_syntax &node)
{
    //由于我们的函数没有参数，所以，直接让block来处理scope的事情
    this->scope.enter();
    for(auto i :node.body)
    {
        i->accept(*this);
    }
    this->scope.exit();
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
        mem = this->cur_func->new_obj(node.name, node.accept_type);
    // }
    if(node.dimension) {
        mem->dim = node.dimension;
    }
    else {
        mem->addr->type = node.accept_type;
    }
    this->scope.push_var(node.name, mem);
    this->cur_func->func_args.push_back(mem);
}
void ir::IrBuilder::visit(ast::var_dimension_syntax &node) {}
void ir::IrBuilder::visit(ast::exp_stmt_syntax &node) {
    node.exp->accept(*this);
}
void ir::IrBuilder::visit(ast::while_stmt_syntax &node) {
    auto while_start = this->cur_func->new_block();
    auto while_body = this->cur_func->new_block();
    auto out_block = this->cur_func->new_block();
    break_list.push_back(out_block);
    continue_list.push_back(while_start);
    cur_block->push_back(std::make_shared<ir::jump>(while_start));
    cur_block = while_start;
    node.cond->accept(*this);
    auto judge_ret = pass_value;
    cur_block->push_back(std::make_shared<ir::br>(judge_ret, while_body, out_block));
    cur_block = while_body;
    node.while_body->accept(*this);
    cur_block->push_back(std::make_shared<ir::while_loop>(while_start, while_body, out_block));
    cur_block = out_block;
    break_list.pop_back();
    continue_list.pop_back();
}
void ir::IrBuilder::visit(ast::empty_stmt_syntax &node) {}
void ir::IrBuilder::visit(ast::break_stmt_syntax &node) {
    if(break_list.empty()) {
        abort();
    }
    cur_block->push_back(std::make_shared<ir::break_or_continue>(break_list.back()));
}
void ir::IrBuilder::visit(ast::continue_stmt_syntax &node) {
    if(break_list.empty()) {
        abort();
    }
    cur_block->push_back(std::make_shared<ir::break_or_continue>(continue_list.back()));
}
void ir::IrBuilder::visit(ast::init_syntax &node) {
    if(!pass_obj->dim) {
        node.initializer.front()->accept(*this);
        auto ini_value = pass_value;
        auto obj = pass_obj;
        cur_block->push_back(std::make_shared<ir::store>(obj->get_addr(), ini_value));
        return;
    }
    if(node.is_array) {
        for(auto ini : node.initializer) {
            ini->accept(*this);
        }
    }
    else {
        node.initializer.front()->accept(*this);
        auto val = pass_value;
        auto obj = pass_obj;
        auto dst = cur_func->new_reg(obj->get_addr()->type);
        ptr_list<ir::ir_value> dim;
        for(auto dimension : node.current_dim) {
            dimension->accept(*this);
            dim.push_back(pass_value);
        }
        auto what = std::dynamic_pointer_cast<ir::ir_constant>(val);
        cur_block->push_back(std::make_shared<get_element_ptr>(obj, dst, dim));
        cur_block->push_back(std::make_shared<ir::store>(dst, val));
    }
}
// void ir::IrBuilder::visit(ast::init_syntax &node) {
//     if(node.is_array) {
//         // pass_list.clear();
//         // for(auto a : node.initializer) {
//         //     a->accept(*this);
//         //     pass_list.push_back(pass_value);
//         // }
//         for(int i = 0; i < node.initializer.size() ; i++) {
//             // if(i < node.transed_size) {
//                 node.initializer[i]->accept(*this);
//                 if(pass_value != nullptr) {
//                     pass_list.push_back(pass_value);
//                 }
//             // }
//             // else {
//                 // pass_list.push_back(std::make_shared<ir_constant>(0));
//             // }
//         }
//         for(int i = node.initializer.size(); i < node.transed_size; i++) {
//             // if(node.to_bottom > 0) {
//                 pass_list.push_back(std::make_shared<ir_constant>(0));
//             // }
//             // else {
//                 // auto empty_ini = std::make_shared<ast::init_syntax>();
//                 // empty_ini->is_array = true;
//                 // empty_ini->transed_size = node.transed_size;
//                 // empty_ini->designed_size = node.designed_size;
//                 // empty_ini->to_bottom = node.to_bottom - 1;
//                 // empty_ini->accept(*this); 
//             // }
//         }
//         pass_value = nullptr;
//     }
//     else {
//         node.initializer.front()->accept(*this);
//     }
// }
void ir::IrBuilder::visit(ast::func_call_syntax &node) {
    ptr_list<ir::ir_value> params;
    for(auto par : node.params) {
        par->accept(*this);
        params.push_back(pass_value);
    }
    auto func = this->functions.find_func(node.func_name);
    auto call_ins =  std::make_shared<ir::func_call>(node.func_name, params, func->get_rettype());
    if(func->get_rettype() != vartype::VOID) {
        auto dst = cur_func->new_reg(func->get_rettype());
        call_ins->ret_reg = dst;
        pass_value = dst;
    }
    cur_block->push_back(call_ins);
}
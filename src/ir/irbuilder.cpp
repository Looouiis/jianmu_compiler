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
    ptr<ir_libfunc> getint = std::make_shared<ir_libfunc>("getint", compunit->global_var.size());
    getint->set_retype(vartype::INT);
    this->functions.push_func("getint", getint);
    this->compunit->add_lib_func("getint", getint);

    ptr<ir_libfunc> getch = std::make_shared<ir_libfunc>("getch", compunit->global_var.size());
    getch->set_retype(vartype::INT);
    this->functions.push_func("getch", getch);
    this->compunit->add_lib_func("getch", getch);

    ptr<ir_libfunc> getarray = std::make_shared<ir_libfunc>("getarray", compunit->global_var.size());
    getarray->set_retype(vartype::INT);
    this->functions.push_func("getarray", getarray);
    this->compunit->add_lib_func("getarray", getarray);

    ptr<ir_libfunc> getfloat = std::make_shared<ir_libfunc>("getfloat", compunit->global_var.size());
    getfloat->set_retype(vartype::FLOAT);
    this->functions.push_func("getfloat", getfloat);
    this->compunit->add_lib_func("getfloat", getfloat);

    ptr<ir_libfunc> getfarray = std::make_shared<ir_libfunc>("getfarray", compunit->global_var.size());
    getfarray->set_retype(vartype::INT);
    this->functions.push_func("getfarray", getfarray);
    this->compunit->add_lib_func("getfarray", getfarray);

    ptr<ir_libfunc> putint= std::make_shared<ir_libfunc>("putint", compunit->global_var.size());
    putint->set_retype(vartype::VOID);
    this->functions.push_func("putint", putint);
    this->compunit->add_lib_func("putint", putint);

    ptr<ir_libfunc> putch = std::make_shared<ir_libfunc>("putch", compunit->global_var.size());
    putch->set_retype(vartype::VOID);
    this->functions.push_func("putch", putch);
    this->compunit->add_lib_func("putch", putch);

    ptr<ir_libfunc> putarray = std::make_shared<ir_libfunc>("putarray", compunit->global_var.size());
    putarray->set_retype(vartype::VOID);
    this->functions.push_func("putarray", putarray);
    this->compunit->add_lib_func("putarray", putarray);

    ptr<ir_libfunc> putfloat = std::make_shared<ir_libfunc>("putfloat", compunit->global_var.size());
    putfloat->set_retype(vartype::VOID);
    this->functions.push_func("putfloat", putfloat);
    this->compunit->add_lib_func("putfloat", putfloat);

    ptr<ir_libfunc> putfarray = std::make_shared<ir_libfunc>("putfarray", compunit->global_var.size());
    putfarray->set_retype(vartype::VOID);
    this->functions.push_func("putfarray", putfarray);
    this->compunit->add_lib_func("putfarray", putfarray);

    ptr<ir_libfunc> putf = std::make_shared<ir_libfunc>("putf", compunit->global_var.size());
    putf->set_retype(vartype::VOID);
    this->functions.push_func("putf", putf);
    this->compunit->add_lib_func("putf", putf);

    // this->functions.push_func(, );
    /*
        visit children
    */
    for(auto & i : node.global_defs)
        i->accept(*this);
}

void ir::IrBuilder::visit(ast::func_def_syntax &node){
    this->in_func = true;
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
    this->in_func = false;
}

void ir::IrBuilder::visit(ast::rel_cond_syntax &node)           // self1
{
    node.lhs->accept(*this);
    auto exp1 = pass_value;
    if(!pass_value) {
        return;
    }
    node.rhs->accept(*this);
    auto exp2 = pass_value;
    if(!pass_value) {
        return;
    }
    if(exp1->get_type() == vartype::FLOAT || exp2->get_type() == vartype::FLOAT) {
        if(exp1->get_type() != vartype::FLOAT) {
            auto transed = cur_func->new_reg(exp1->get_type() == vartype::INT ? vartype::FLOAT : vartype::FLOATADDR);
            cur_block->push_back(std::make_shared<ir::trans>(vartype::FLOAT, transed, exp1));
            exp1 = transed;
        }
        if(exp2->get_type() != vartype::FLOAT) {
            auto transed = cur_func->new_reg(exp2->get_type() == vartype::INT ? vartype::FLOAT : vartype::FLOATADDR);
            cur_block->push_back(std::make_shared<ir::trans>(vartype::FLOAT, transed, exp2));
            exp2 = transed;
        }
    }
    auto dst = cur_func->new_reg(vartype::BOOL);
    cur_block->push_back(std::make_shared<ir::cmp_ins>(dst, exp1, exp2, node.op));
    this->pass_value = dst;
}

void ir::IrBuilder::visit(ast::logic_cond_syntax &node)         // self2
{
    if(node.op == relop::op_and || node.op == relop::op_or) {
        auto lhs_block = cur_func->new_block();
        auto rhs_block = cur_func->new_block();
        auto true_block = cur_func->new_block();
        auto false_block = cur_func->new_block();
        auto nxt_block = cur_func->new_block();
        auto ret_obj = cur_func->new_obj("tmp_bool", vartype::BOOL);
        cur_block->push_back(std::make_shared<alloc>(ret_obj));
        cur_block->push_back(std::make_shared<jump>(lhs_block));
        cur_block = lhs_block;
        node.lhs->accept((*this));
        auto exp1 = pass_value;
        if(exp1->get_type() != vartype::BOOL) {
            ptr<ir_constant> zero;
            if(exp1->get_type() == vartype::FLOAT) {
                zero = std::make_shared<ir_constant>(0.0f);
                zero->type = vartype::FLOAT;
            }
            else {
                zero = std::make_shared<ir_constant>(0);
                zero->type = vartype::INT;
            }
            auto transed = cur_func->new_reg(vartype::BOOL);
            cur_block->push_back(std::make_shared<cmp_ins>(transed, exp1, zero, relop::non_equal));
            exp1 = transed;
        }
        ptr<ir::ir_basicblock> target_true;
        ptr<ir::ir_basicblock> target_false;
        if(node.op == relop::op_and) {
            target_true = rhs_block;
            target_false = false_block;
        }
        else {
            target_true = true_block;
            target_false = rhs_block;
        }
        cur_block->push_back(std::make_shared<ir::br>(exp1, target_true, target_false));
        cur_block = rhs_block;
        node.rhs->accept(*this);
        auto exp2 = pass_value;
        if(exp2->get_type() != vartype::BOOL) {
            ptr<ir_constant> zero;
            if(exp2->get_type() == vartype::FLOAT) {
                zero = std::make_shared<ir_constant>(0.0f);
                zero->type = vartype::FLOAT;
            }
            else {
                zero = std::make_shared<ir_constant>(0);
                zero->type = vartype::INT;
            }
            auto transed = cur_func->new_reg(vartype::BOOL);
            cur_block->push_back(std::make_shared<cmp_ins>(transed, exp2, zero, relop::non_equal));
            exp2 = transed;
        }
        cur_block->push_back(std::make_shared<ir::br>(exp2, true_block, false_block));
        auto true_ret = std::make_shared<ir::ir_constant>(1);
        true_ret->type = vartype::BOOL;
        auto false_ret = std::make_shared<ir::ir_constant>(0);
        false_ret->type = vartype::BOOL;
        true_block->push_back(std::make_shared<store>(ret_obj->addr, true_ret));
        true_block->push_back(std::make_shared<jump>(nxt_block));
        false_block->push_back(std::make_shared<store>(ret_obj->addr, false_ret));
        false_block->push_back(std::make_shared<jump>(nxt_block));
        cur_block = nxt_block;
        auto ret = cur_func->new_reg(vartype::BOOL);
        cur_block->push_back(std::make_shared<load>(ret, ret_obj->addr));
        pass_value = ret;
        return;
    }
    node.lhs->accept(*this);
    auto exp1 = pass_value;
    if(!pass_value) {
        return;
    }
    node.rhs->accept(*this);
    auto exp2 = pass_value;
    if(!pass_value) {
        return;
    }
    if(exp1->get_type() == vartype::FLOAT || exp2->get_type() == vartype::FLOAT) {
        if(exp1->get_type() != vartype::FLOAT) {
            auto transed = cur_func->new_reg(exp1->get_type() == vartype::INT ? vartype::FLOAT : vartype::FLOATADDR);
            cur_block->push_back(std::make_shared<ir::trans>(vartype::FLOAT, transed, exp1));
            exp1 = transed;
        }
        if(exp2->get_type() != vartype::FLOAT) {
            auto transed = cur_func->new_reg(exp2->get_type() == vartype::INT ? vartype::FLOAT : vartype::FLOATADDR);
            cur_block->push_back(std::make_shared<ir::trans>(vartype::FLOAT, transed, exp2));
            exp2 = transed;
        }
    }
    // if(node.op == relop::op_and || node.op == relop::op_or) {
    //     auto lhs_block = cur_func->new_block();
    //     auto rhs_block = cur_func->new_block();
    //     auto bak = cur_block;
    //     if(exp1->get_type() != vartype::BOOL) {
    //         ptr<ir_constant> zero;
    //         if(exp1->get_type() == vartype::FLOAT) {
    //             zero = std::make_shared<ir_constant>(0.0f);
    //             zero->type = vartype::FLOAT;
    //         }
    //         else {
    //             zero = std::make_shared<ir_constant>(0);
    //             zero->type = vartype::INT;
    //         }
    //         auto transed = cur_func->new_reg(vartype::BOOL);
    //         cur_block->push_back(std::make_shared<cmp_ins>(transed, exp1, zero, relop::non_equal));
    //         exp1 = transed;
    //     }
    //     if(exp2->get_type() != vartype::BOOL) {
    //         ptr<ir_constant> zero;
    //         if(exp2->get_type() == vartype::FLOAT) {
    //             zero = std::make_shared<ir_constant>(0.0f);
    //             zero->type = vartype::FLOAT;
    //         }
    //         else {
    //             zero = std::make_shared<ir_constant>(0);
    //             zero->type = vartype::INT;
    //         }
    //         auto transed = cur_func->new_reg(vartype::BOOL);
    //         cur_block->push_back(std::make_shared<cmp_ins>(transed, exp2, zero, relop::non_equal));
    //         exp2 = transed;
    //     }
    // }
    auto dst = cur_func->new_reg(vartype::BOOL);
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
    ptr<ir_reg> dst = cur_func->new_reg(node.restype);
    if(exp1->get_type() == vartype::FLOAT || exp2->get_type() == vartype::FLOAT) {
        if(exp1->get_type() != vartype::FLOAT) {
            auto transed = cur_func->new_reg(exp1->get_type() == vartype::INT ? vartype::FLOAT : vartype::FLOATADDR);
            cur_block->push_back(std::make_shared<ir::trans>(vartype::FLOAT, transed, exp1));
            exp1 = transed;
        }
        if(exp2->get_type() != vartype::FLOAT) {
            auto transed = cur_func->new_reg(exp2->get_type() == vartype::INT ? vartype::FLOAT : vartype::FLOATADDR);
            cur_block->push_back(std::make_shared<ir::trans>(vartype::FLOAT, transed, exp2));
            exp2 = transed;
        }
        dst = cur_func->new_reg(node.restype == vartype::INT ? vartype::FLOAT : (node.restype == vartype::INTADDR ? vartype::FLOATADDR : node.restype));
    }
    else {
        dst = cur_func->new_reg(node.restype);
    }
    cur_block->push_back(std::make_shared<ir::binary_op_ins>(dst,exp1,exp2,node.op));
    this->pass_value=dst;
}

void ir::IrBuilder::visit(ast::unaryop_expr_syntax &node)           // self3
{
    node.rhs->accept(*this);
    auto exp2 = pass_value;
    if(!pass_value) {
        return;
    }
    auto dst = cur_func->new_reg(pass_type);
    if(node.op == unaryop::op_not) {
        if(exp2->get_type() != vartype::BOOL) {
            ptr<ir_constant> zero;
            if(exp2->get_type() == vartype::FLOAT) {
                zero = std::make_shared<ir_constant>(0.0f);
                zero->type = vartype::FLOAT;
            }
            else {
                zero = std::make_shared<ir_constant>(0);
                zero->type = vartype::INT;
            }
            auto transed = cur_func->new_reg(vartype::BOOL);
            cur_block->push_back(std::make_shared<cmp_ins>(transed, exp2, zero, relop::non_equal));
            exp2 = transed;
        }
        dst->type = vartype::BOOL;
    }
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
    
    if(!in_func) {
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
            return;
        }
    }
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
        auto is_const = std::dynamic_pointer_cast<ir_constant>(pass_value);
        if(is_const) {
            global->init_val.push_back(pass_value);
        }
        else {
            ptr<ir::ir_constant> zero;
            if(global->obj->addr->type == vartype::INT || global->obj->addr->type == vartype::INTADDR) {
                int z = 0;
                zero = std::make_shared<ir::ir_constant>(z);
            }
            else {
                float z = 0.0f;
                zero = std::make_shared<ir::ir_constant>(z);
            }
            // auto zero = std::make_shared<ir::ir_constant>((global->obj->addr->type == vartype::INT || global->obj->addr->type == vartype::INTADDR) ? 0 : 0.0f);
            std::unordered_map<vartype, vartype> addr2obj = {{vartype::INTADDR, vartype::INT}, {vartype::FLOATADDR, vartype::FLOAT}};
            zero->type = addr2obj[global->obj->addr->type];
            global->init_val.push_back(zero);
            this->in_func = true;
            init->initializer.front()->accept(*this);
            auto ini_val = pass_value;
            auto obj = global->obj;
            cur_block->push_back(std::make_shared<ir::store>(obj->get_addr(), ini_val));
            this->in_func = false;
            // compunit->global_init_func->new_reg(vartype type)
        }
            cur_block->push_back(ret);
            this->cur_func = backup;
            this->cur_block = backup_block;
        return;
    }
    for(auto raw : init->initializer) {
        auto ini = std::dynamic_pointer_cast<ast::init_syntax>(raw);
        global_init(global, ini);
    }
}

void ir::IrBuilder::visit(ast::var_def_stmt_syntax &node)       // self5
{
    if(in_func) {
        auto obj = cur_func->new_obj(node.name, node.restype);
        int total_cnt = 1;
        if(node.dimension) {
            obj->dim = node.dimension;
            for(auto dim : node.dimension->dimensions) {
                total_cnt *= dim->calc_res();
            }
        }
        obj->addr->is_const = node.is_const;
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
    std::unordered_map<vartype, vartype> trans = {{vartype::INTADDR, vartype::INT}, {vartype::INT, vartype::INT}, {vartype::FLOATADDR, vartype::FLOAT}, {vartype::FLOAT, vartype::FLOAT}};
    if(value->get_type() != trans[obj->addr->type]) {
        auto transed = cur_func->new_reg(trans[obj->addr->type]);
        cur_block->push_back(std::make_shared<ir::trans>(obj->addr->get_type(), transed, value));
        value = transed;
    }
    if(!obj->addr->is_const) {
        if(node.target->dimension) {
            auto element_ptr = cur_func->new_reg(obj->get_addr()->type);
            ptr_list<ir::ir_value> dim;
            for(auto a : node.target->dimension->dimensions) {
                a->accept(*this);
                dim.push_back(pass_value);
            }
            cur_block->push_back(std::make_shared<ir::get_element_ptr>(obj, element_ptr, dim));
            cur_block->push_back(std::make_shared<ir::store>(element_ptr, value));
        }
        else {
            cur_block->push_back(std::make_shared<ir::store>(obj->get_addr(), value));
            // map[node.target->name] = ptr<ir::ir_value>(pass_value);
        }
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
    if(judge_ret->get_type() != vartype::BOOL) {
        ptr<ir_constant> zero;
        if(judge_ret->get_type() == vartype::FLOAT) {
            zero = std::make_shared<ir_constant>(0.0f);
            zero->type = vartype::FLOAT;
        }
        else {
            zero = std::make_shared<ir_constant>(0);
            zero->type = vartype::INT;
        }
        auto transed = cur_func->new_reg(vartype::BOOL);
        cur_block->push_back(std::make_shared<cmp_ins>(transed, judge_ret, zero, relop::non_equal));
        judge_ret = transed;
    }
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
        this->scope.push_var(node.name, mem);
    }
    else {
        mem->addr->type = node.accept_type;
        // changeable->dim = node.dimension;
        auto changeable = this->cur_func->new_obj(node.name, node.accept_type);
        cur_block->push_back(std::make_shared<ir::alloc>(changeable));
        cur_block->push_back(std::make_shared<ir::store>(changeable->get_addr(), mem->get_addr()));
        this->scope.push_var(node.name, changeable);
    }
    // this->scope.push_var(node.name, mem);
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
    if(judge_ret->get_type() != vartype::BOOL) {
        ptr<ir_constant> zero;
        if(judge_ret->get_type() == vartype::FLOAT) {
            zero = std::make_shared<ir_constant>(0.0f);
            zero->type = vartype::FLOAT;
        }
        else {
            zero = std::make_shared<ir_constant>(0);
            zero->type = vartype::INT;
        }
        auto transed = cur_func->new_reg(vartype::BOOL);
        cur_block->push_back(std::make_shared<cmp_ins>(transed, judge_ret, zero, relop::non_equal));
        judge_ret = transed;
    }
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
    std::unordered_map<vartype, vartype> trans = {{vartype::INTADDR, vartype::INT}, {vartype::INT, vartype::INT}, {vartype::FLOATADDR, vartype::FLOAT}, {vartype::FLOAT, vartype::FLOAT}};
    if(!pass_obj->dim) {
        node.initializer.front()->accept(*this);
        auto ini_value = pass_value;
        auto obj = pass_obj;
        if(ini_value->get_type() != trans[obj->addr->type]) {
            auto transed = cur_func->new_reg(trans[obj->addr->type]);
            cur_block->push_back(std::make_shared<ir::trans>(obj->addr->get_type(), transed, ini_value));
            ini_value = transed;
        }
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
        if(val->get_type() != trans[obj->addr->type]) {
            auto transed = cur_func->new_reg(trans[obj->addr->type]);
            cur_block->push_back(std::make_shared<ir::trans>(obj->addr->get_type(), transed, val));
            val = transed;
        }
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
    auto call_ins = std::make_shared<ir::func_call>(node.func_name, params, func->get_rettype());
    if(func->get_rettype() != vartype::VOID) {
        auto dst = cur_func->new_reg(func->get_rettype());
        call_ins->ret_reg = dst;
        pass_value = dst;
    }
    cur_block->push_back(call_ins);
}
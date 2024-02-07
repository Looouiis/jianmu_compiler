#include "SyntaxAnalyse.hpp"
#include "cstring"
#include "parser/SyntaxTree.hpp"
#include <cassert>
#include <cstdlib>
#include <cstring>
#include <iterator>
#include <memory>
#include <vector>

extern ast::SyntaxTree syntax_tree;
void SyntaxAnalyseCompUnit(ast::compunit_syntax * &self, ast::compunit_syntax *compunit, ast::syntax_tree_node *def)
{
    if(compunit){
        self = new ast::compunit_syntax;
        for(auto  i : compunit->global_defs){
            self->global_defs.emplace_back(ptr<ast::syntax_tree_node>(i));
        }
        self->global_defs.emplace_back(def);
    }else{
        self = new ast::compunit_syntax;
        self->global_defs.emplace_back(def);
    }
    syntax_tree.root = self;
}

void SyntaxAnalyseFuncDef(ast::func_def_syntax * &self, vartype var_type, char *Ident, ast::block_syntax *block)
{
    self = new ast::func_def_syntax;
    self->name = Ident;
    self->rettype = var_type;
    
    self->body = ptr<ast::block_syntax>(block);
}

void SyntaxAnalyseFuncFDef(ast::func_f_param_syntax *&self, vartype var_type, char* ident, ast::var_dimension_syntax* dimension) {
    auto syntax = new ast::func_f_param_syntax;
    syntax->accept_type = var_type;
    syntax->name = ident;
    if(dimension) {
        syntax->dimension = ptr<ast::var_dimension_syntax>(dimension);
        syntax->dimension->has_first_dim = false;
    }
    self = syntax;
}

void SyntaxAnalyseFuncFDecl(ast::func_def_syntax* &self, ast::func_f_param_syntax *var_def, ast::func_def_syntax *var_def_group) {
    // auto syntax = new ast::func_def_syntax;
    if(var_def_group) {
        self->params = var_def_group->params;
    }
    self->params.insert(self->params.begin(), ptr<ast::func_f_param_syntax>(var_def));
    // self = syntax;
}

void SyntaxAnalyseFuncFDeclGroup(ast::func_def_syntax* &self, ast::func_f_param_syntax *var_def, ast::func_def_syntax *var_def_group) {
    auto syntax = new ast::func_def_syntax;
    if(var_def_group) {
        syntax->params = var_def_group->params;
    }
    syntax->params.insert(syntax->params.begin(), ptr<ast::func_f_param_syntax>(var_def));
    self = syntax;
}

void SynataxAnalyseFuncType(vartype &self, char* type)
{
    self = ( !strcmp(type,"int") ? vartype::INT : (!strcmp(type,"void") ? vartype::VOID : vartype::FLOAT));
}

void SynataxAnalyseBlock(ast::block_syntax *&self, ast::block_syntax *block_items)
{
    self = new ast::block_syntax;
    if(block_items){
        for(auto  i : block_items->body){
            self->body.emplace_back(i);
        }
    }
}    

void SynataxAnalyseBlockItems(ast::block_syntax *&self, ast::block_syntax *block_items, ast::stmt_syntax *stmt)
{
    self = new ast::block_syntax;
    if(block_items && stmt){
        for(auto  i : block_items->body){
            self->body.emplace_back(i);
        }
        self->body.emplace_back(stmt);
    }else if(!stmt && !block_items){
        self = nullptr;
    }else {
        self->body.emplace_back(stmt);
    }
}

void SynataxAnalyseStmtReturn(ast::stmt_syntax *&self, ast::expr_syntax *exp)
{
    auto syntax = new ast::return_stmt_syntax;
    if(exp)
        syntax->exp = ptr<ast::expr_syntax>(exp);
    self = static_cast<ast::stmt_syntax*>(syntax);
}

void SynataxAnalysePrimaryExpIntConst(ast::expr_syntax *&self, char *current_symbol)
{
    auto syntax = new ast::literal_syntax;
    syntax->intConst = std::stoi(current_symbol);
    syntax->restype = vartype::INT;
    self = static_cast<ast::expr_syntax*>(syntax);
}

void SynataxAnalysePrimaryExpFloatConst(ast::expr_syntax *&self, char *current_symbol)
{
    auto syntax = new ast::literal_syntax;
    syntax->floatConst= std::stof(current_symbol);
    syntax->restype = vartype::FLOAT;
    self = static_cast<ast::expr_syntax*>(syntax);
}
//a-难度
void SynataxAnalyseStmtBlock(ast::stmt_syntax *&self, ast::block_syntax *block)
{
    auto syntax = static_cast<ast::stmt_syntax*>(block);
    self = syntax;
}

void SynataxAnalysePrimaryExpVar(ast::expr_syntax* &self, char* current_symbol)
{
    auto syntax = new ast::lval_syntax;
    syntax->name = current_symbol;
    syntax->restype = vartype::INT;
    self = static_cast<ast::expr_syntax*>(syntax);
}

void SynataxAnalyseVarType(vartype &self, char* type) {
    self = (!strcmp(type, "int") ? vartype::INT : vartype::FLOAT);
}

void SynataxAnalyseVarDecl(ast::stmt_syntax *&self,vartype var_type, ast::var_def_stmt_syntax *var_def, ast::var_decl_stmt_syntax *var_def_group, bool is_const)
{
    auto syntax = new ast::var_decl_stmt_syntax;
    if(var_def_group) {
        syntax->var_def_list = var_def_group->var_def_list;
    }
    syntax->var_def_list.insert(syntax->var_def_list.begin(), ptr<ast::var_def_stmt_syntax>(var_def));
    for(auto a : syntax->var_def_list) {
        a->restype = var_type;
        a->is_const = is_const;
    }
    self = static_cast<ast::stmt_syntax*>(syntax);
}

void SynataxAnalyseVarDefGroup(ast::var_decl_stmt_syntax *&self, ast::var_def_stmt_syntax *var_def, ast::var_decl_stmt_syntax *var_def_group)
{
    auto syntax = new ast::var_decl_stmt_syntax;
    if(var_def_group) {
        syntax->var_def_list = var_def_group->var_def_list;
    }
    syntax->var_def_list.insert(syntax->var_def_list.begin(), ptr<ast::var_def_stmt_syntax>(var_def));
    self = syntax;
}

// ptr<ast::init_syntax> origin;
// vector<int> pointer = {0};
// ptr<ast::init_syntax> reorganize_init(ast::var_dimension_syntax* dim, ptr_list<ast::expr_syntax>::iterator it) {
//     ptr<ast::init_syntax> new_init = std::make_shared<ast::init_syntax>();
//     int what = (*(dim->dimensions.end() - 1))->calc_res();
//     if(it != dim->dimensions.end() - 1) {
//         for(int i = 0; i < (*it)->calc_res(); i++) {
//             new_init->initializer.push_back(reorganize_init(dim, it + 1));
//         }
//         return new_init;
//     }
//     for(int i = 0; i < (*it)->calc_res(); ) {
//         auto current_ini = origin;
//         for(int j = 0; j < pointer.size(); j++) {
//             if(j == pointer.size() - 1) {
                
//             }
//             else {
//                 current_ini = std::dynamic_pointer_cast<ast::init_syntax>(current_ini->initializer[pointer[j]]);
//                 if(current_ini == nullptr)
//                     abort();
//             }
//         }
//         int idx = pointer.back();
//         pointer.pop_back();
//         if(idx == current_ini->initializer.size()) {
//             if(pointer.size() == 0 && idx == origin->initializer.size()) {
//                 auto zero = std::make_shared<ast::literal_syntax>();
//                 zero->intConst = 0;
//                 zero->restype = vartype::INT;
//                 new_init->initializer.push_back(zero);
//                 pointer.push_back(idx);
//                 i++;
//             }
//             else {
//                 int nxt = pointer.back();
//                 pointer.pop_back();
//                 pointer.push_back(nxt + 1);
//                 i--;
//             }
//             continue;
//             // return reorganize_init(dim, it);
//         }
//         auto current = current_ini->initializer[idx];
//         auto is_ini = std::dynamic_pointer_cast<ast::init_syntax>(current);
//         if(is_ini->is_array) {
//             if(i != 0 && is_ini->initializer.size() > 1) {
//                 abort();    // 参照cpp的情况
//             }
//             auto loop = is_ini->initializer.front();
//             auto loop_ini = std::dynamic_pointer_cast<ast::init_syntax>(loop);
//             ptr<ast::init_syntax> last = current_ini;
//             if(/*loop_ini->is_array && */!(i != 0 && loop_ini->initializer.size() > 1)) {
//                 pointer.push_back(idx);
//                 pointer.push_back(0);
//             }
//             while(loop_ini->is_array) {
//                 if(i != 0 && loop_ini->initializer.size() > 1) {
//                     abort();
//                 }
//                 loop = loop_ini->initializer.front();
//                 last = loop_ini;
//                 loop_ini = std::dynamic_pointer_cast<ast::init_syntax>(loop);
//                 pointer.push_back(0);
//             }
//             current_ini = last;
//             idx = pointer.back();
//             pointer.pop_back();
//             new_init->initializer.push_back(loop_ini->initializer.front());
//             i++;
//         }
//         else {
//             new_init->initializer.push_back(is_ini->initializer.front());
//             i++;
//             // pointer.push_back(idx + 1);
//         }
//         if(idx + 1 == current_ini->initializer.size()) {
//             for(; i < (*it)->calc_res(); i++) {
//                 auto zero = std::make_shared<ast::literal_syntax>();
//                 zero->intConst = 0;
//                 zero->restype = vartype::INT;
//                 new_init->initializer.push_back(zero);
//             }

//             // int nxt = pointer.back();
//             // pointer.pop_back();
//             // pointer.push_back(nxt + 1);
//         }
//         // else {
//             pointer.push_back(idx + 1);
//         // }
//     }
//     return new_init;
// }

ptr<ast::init_syntax> reorganize_init(ptr<ast::init_syntax> init, ptr_list<ast::expr_syntax> dim, ptr_list<ast::expr_syntax> current_dim) {
    auto ret = std::make_shared<ast::init_syntax>();
    ret->is_array = true;
    ret->designed_size = dim.front();
    ret->transed_size = dim.front()->calc_res();
    ret->current_dim = current_dim;

    // auto zero = std::make_shared<ast::literal_syntax>(0);
    // zero->intConst = 0;
    // zero->restype = vartype::INT;

    int pointer = 0;
    if(dim.size() > 1) {    // 仍未到最后一个维度
        for(int i = 0; i < dim.front()->calc_res(); i++) {
            assert(init->is_array);
            ptr_list<ast::expr_syntax> nxt_cur_dim = current_dim;
            nxt_cur_dim.push_back(std::make_shared<ast::literal_syntax>(i));
            if(pointer < init->initializer.size()) {
                auto cur = std::dynamic_pointer_cast<ast::init_syntax>(init->initializer[pointer]);
                assert(cur);
                ptr_list<ast::expr_syntax> nxt_dim(dim.begin() + 1, dim.end());
                if(cur->is_array) {
                    pointer++;
                    ret->initializer.push_back(reorganize_init(cur, nxt_dim, nxt_cur_dim));
                }
                else {
                    int nxt_cnt = 1;
                    auto nxt_ini = std::make_shared<ast::init_syntax>();
                    nxt_ini->is_array = true;
                    for(auto it = dim.begin() + 1; it != dim.end(); it++) {
                        nxt_cnt *= (*it)->calc_res();
                    }
                    for(int j = 0; j < nxt_cnt; j++) {
                        if(pointer < init->initializer.size()) {
                            auto check = std::dynamic_pointer_cast<ast::init_syntax>(init->initializer[pointer]);
                            if(!check || check->is_array) {
                                abort();
                            }
                            assert(check);
                            assert(!check->is_array);
                            nxt_ini->initializer.push_back(init->initializer[pointer++]);
                        }
                        else {
                            auto zero_ini = std::make_shared<ast::init_syntax>();
                            zero_ini->is_array = false;
                            zero_ini->initializer.push_back(std::make_shared<ast::literal_syntax>(0));
                            nxt_ini->initializer.push_back(zero_ini);
                        }
                    }
                    ret->initializer.push_back(reorganize_init(nxt_ini, nxt_dim, nxt_cur_dim));
                }
            }
            else {
                auto nxt_ini = std::make_shared<ast::init_syntax>();
                nxt_ini->is_array = true;
                ptr_list<ast::expr_syntax> nxt_dim(dim.begin() + 1, dim.end());
                ret->initializer.push_back(reorganize_init(nxt_ini, nxt_dim, nxt_cur_dim));
            }
        }
    }
    else {      // 到达最后一个维度：能插入的只能是exp，而不是init_syntax
        for(int i = 0; i < dim.front()->calc_res(); i++) {
            if(pointer < init->initializer.size()) {
                auto cur = std::dynamic_pointer_cast<ast::init_syntax>(init->initializer[pointer++]);
                if(cur && !cur->is_array) {
                    cur->current_dim = current_dim;
                    cur->current_dim.push_back(std::make_shared<ast::literal_syntax>(i));
                    ret->initializer.push_back(cur/*->initializer.front()*/);
                }
                else {
                    abort();
                }
            }
            else {
                auto exp_zero = std::make_shared<ast::init_syntax>();
                exp_zero->is_array = false;
                exp_zero->initializer.push_back(std::make_shared<ast::literal_syntax>(0));
                exp_zero->current_dim = current_dim;
                exp_zero->current_dim.push_back(std::make_shared<ast::literal_syntax>(i));
                ret->initializer.push_back(exp_zero);
            }
        }
    }
    return ret;
}

void SynataxAnalyseVarDef(ast::var_def_stmt_syntax *&self, char *ident, ast::var_dimension_syntax* current_dim, ast::init_syntax *init)
{
    auto syntax = new ast::var_def_stmt_syntax;
    if(init) {
        if(current_dim) {
            auto res = reorganize_init(std::shared_ptr<ast::init_syntax>(init), current_dim->dimensions, {});
            res->print();
            syntax->initializer = res;
        }
        else {
            syntax->initializer = ptr<ast::init_syntax>(init);
        }
    }
    if(current_dim) {
        syntax->dimension = ptr<ast::var_dimension_syntax>(current_dim);
        // ptr_list<ast::init_syntax> nxt_arrays;
        // ptr_list<ast::init_syntax> new_arrays;
        // if(init && syntax->dimension->has_first_dim) {
        //     nxt_arrays.push_back(syntax->initializer);
        //     // for(auto a : syntax->dimension->dimensions) {
        //     for(int i = 0; i < syntax->dimension->dimensions.size(); i++) {
        //         auto a = syntax->dimension->dimensions[i];
        //         for(auto ini : nxt_arrays) {
        //             ini->designed_size = a;
        //             ini->transed_size = a->calc_res();
        //             // ini->to_bottom = syntax->dimension->dimensions.size() - i;
        //             for(auto child : ini->initializer) {
        //                 auto is_ini = std::dynamic_pointer_cast<ast::init_syntax>(child);
        //                 if(is_ini && is_ini->is_array) {
        //                     new_arrays.push_back(is_ini);
        //                 }
        //             }
        //         }
        //         if(new_arrays.empty()) {
        //             break;
        //         }
        //         nxt_arrays = new_arrays;
        //         new_arrays.clear();
        //         // syntax->initializer->designed_size = a;
        //         // auto is_ini = std::dynamic_pointer_cast<ast::init_syntax>(a);
        //         // if(is_ini && is_ini->is_array) {
        //         //     nxt_arrays.push_back(is_ini);
        //         // }
        //     }
        // }
    }
    syntax->name = ident;
    // syntax->restype = var_type;
    self = syntax;
}

void SynataxAnalyseAddExp(ast::expr_syntax *&self, ast::expr_syntax *exp1, char *op, ast::expr_syntax *exp2)
{
    auto syntax = new ast::binop_expr_syntax;
    if(*op == '+') {
        syntax->op = binop::plus;
    }
    else if(*op == '-') {
        syntax->op = binop::minus;
    }
    syntax->lhs = ptr<ast::expr_syntax>(exp1);
    syntax->rhs = ptr<ast::expr_syntax>(exp2);
    syntax->restype = vartype::INT;
    self = static_cast<ast::expr_syntax*>(syntax);
}
//a难度
void SynataxAnalyseMulExp(ast::expr_syntax *&self, ast::expr_syntax *exp1, char *op, ast::expr_syntax *exp2)
{
    auto syntax = new ast::binop_expr_syntax;
    if(*op == '*') {
        syntax->op = binop::multiply;
    }
    else if(*op == '/') {
        syntax->op = binop::divide;
    }
    syntax->lhs = ptr<ast::expr_syntax>(exp1);
    syntax->rhs = ptr<ast::expr_syntax>(exp2);
    syntax->restype = vartype::INT;
    self = static_cast<ast::expr_syntax*>(syntax);
}

void SynataxAnalyseStmtAssign(ast::stmt_syntax *&self, ast::lval_syntax *target, ast::expr_syntax *value)
{
    auto syntax = new ast::assign_stmt_syntax;
    syntax->value = ptr<ast::expr_syntax>(value);
    syntax->target = ptr<ast::lval_syntax>(target);
    self = static_cast<ast::stmt_syntax*>(syntax);
}

void SynataxAnalyseLval(ast::lval_syntax *&self, char *ident, ast::var_dimension_syntax* current_dim)
{
    auto syntax = new ast::lval_syntax;
    syntax->name = ident;
    if(current_dim) {
        syntax->dimension = ptr<ast::var_dimension_syntax>(current_dim);
        syntax->dimension->has_first_dim = true;
    }
    syntax->restype = vartype::INT;
    self = syntax;
}
//a+难度
void SynataxAnalyseStmtIf(ast::stmt_syntax *&self, ast::expr_syntax *cond, ast::stmt_syntax *then_body, ast::stmt_syntax *else_body)
{
    auto syntax = new ast::if_stmt_syntax;
    syntax->pred = ptr<ast::expr_syntax>(cond);
    syntax->then_body = ptr<ast::stmt_syntax>(then_body);
    syntax->else_body = ptr<ast::stmt_syntax>(else_body);
    self = syntax;
}

void SynataxAnalyseLOrExp(ast::expr_syntax *&self, ast::expr_syntax *cond1, ast::expr_syntax *cond2)
{
    auto syntax = new ast::logic_cond_syntax;
    syntax->lhs = ptr<ast::expr_syntax>(cond1);
    syntax->op = relop::op_or;
    syntax->rhs = ptr<ast::expr_syntax>(cond2);
    self = syntax;
}

void SynataxAnalyseLAndExp(ast::expr_syntax *&self, ast::expr_syntax *cond1, ast::expr_syntax *cond2)
{
    auto syntax = new ast::logic_cond_syntax;
    syntax->lhs = ptr<ast::expr_syntax>(cond1);
    syntax->op = relop::op_and;
    syntax->rhs = ptr<ast::expr_syntax>(cond2);
    self = syntax;
}

void SynataxAnalyseEqExp(ast::expr_syntax *&self, ast::expr_syntax *cond1, char *op, ast::expr_syntax *cond2)
{
    auto syntax = new ast::rel_cond_syntax;
    syntax->lhs = ptr<ast::expr_syntax>(cond1);
    if(op[0] == '=' && op[1] == '=') {
        syntax->op = relop::equal;
    }
    else if(op[0] == '!' && op[1] == '=') {
        syntax->op = relop::non_equal;
    }
    syntax->rhs = ptr<ast::expr_syntax>(cond2);
    self = syntax;
}


void SynataxAnalyseRelExp(ast::expr_syntax *&self, ast::expr_syntax *cond1, char *op, ast::expr_syntax *exp)
{
    auto syntax = new ast::rel_cond_syntax;
    syntax->lhs = ptr<ast::expr_syntax>(cond1);
    if(op[0] == '=' && op[1] == '=') {
        syntax->op = relop::equal;
    }
    else if(op[0] == '!' && op[1] == '=') {
        syntax->op = relop::non_equal;
    }
    else if(*op == '>') {
        if(op[1] != '=') {
            syntax->op = relop::greater;
        }
        else {
            syntax->op = relop::greater_equal;
        }
    }
    else if(*op == '<') {
        if(op[1] != '=') {
            syntax->op = relop::less;
        }
        else {
            syntax->op = relop::less_equal;
        }
    }
    syntax->rhs = ptr<ast::expr_syntax>(exp);
    self = syntax;
}

void SynataxAnalyseUnaryExp(ast::expr_syntax *&self, char *op, ast::expr_syntax *exp)
{
    auto syntax = new ast::unaryop_expr_syntax;
    if(*op == '+') {
        syntax->op = unaryop::plus;
    }
    else if(*op == '-') {
        syntax->op = unaryop::minus;
    }
    else if(*op == '!') {
        syntax->op = unaryop::op_not;
    }
    syntax->rhs = ptr<ast::expr_syntax>(exp);
    syntax->restype = vartype::INT;
    self = syntax;
}

void SyntaxAnalyseVarDimension(ast::var_dimension_syntax* &self, ast::expr_syntax* new_dimension, ast::var_dimension_syntax* current_dim) {
    auto syntax = new ast::var_dimension_syntax;
    if(current_dim) {
        syntax->dimensions = current_dim->dimensions;
    }
    syntax->dimensions.insert(syntax->dimensions.begin(), ptr<ast::expr_syntax>(new_dimension));
    self = syntax;
}

void SynataxAnalyseStmtExp(ast::stmt_syntax* &self, ast::expr_syntax *exp) {
    auto syntax = new ast::exp_stmt_syntax;
    syntax->exp = ptr<ast::expr_syntax>(exp);
    self = syntax;
}

// void SynataxAnalyseStmtEmpty(ast::stmt_syntax* &self) {
//     auto syntax = new ast::empty_stmt_syntax;
//     self = syntax;
// }

void SynataxAnalyseStmtWhile(ast::stmt_syntax* &self, ast::expr_syntax* cond, ast::stmt_syntax *while_body) {
    auto syntax = new ast::while_stmt_syntax;
    syntax->cond = ptr<ast::expr_syntax>(cond);
    syntax->while_body = ptr<ast::stmt_syntax>(while_body);
    self = syntax;
}

void SynataxAnalyseInitVal(ast::init_syntax* &self, ast::expr_syntax* exp, ast::init_syntax* new_init, ast::init_syntax* init_group) {
    auto syntax = new ast::init_syntax;
    if(exp) {
        syntax->is_array = false;
        // syntax->initializer.push_back(ptr<ast::expr_syntax>(exp));
        syntax->initializer.insert(syntax->initializer.begin(), ptr<ast::expr_syntax>(exp));
    }
    else if(new_init) {
        syntax->is_array = true;
            // if(init_group->is_array) {
                // syntax->initializer.insert(syntax->initializer.begin(), ptr<ast::init_syntax>(init_group));
            // }
            // else {
                if(init_group) {
                    syntax->initializer = init_group->initializer;
                }
            // }
        syntax->initializer.insert(syntax->initializer.begin(), ptr<ast::init_syntax>(new_init));
    }
    else {
        syntax->is_array = true;
        // syntax->initializer.push_back(ptr_list<ast::init_syntax>());
    }
    self = syntax;
}

void SynataxAnalyseInitValGroup(ast::init_syntax* &self, ast::init_syntax* new_init, ast::init_syntax* init_group) {
    auto syntax = new ast::init_syntax;
    // if(new_init) {
        syntax->is_array = false;
        if(init_group) {
            syntax->initializer = init_group->initializer;
        }
        syntax->initializer.insert(syntax->initializer.begin(), ptr<ast::init_syntax>(new_init));
    // }
    // else {
    //     syntax->is_array = true;
    //     // syntax->initializer.push_back(ptr_list<ast::init_syntax>());
    // }
    self = syntax;
}

void SyntaxAnalyseFuncCall(ast::expr_syntax* &self, char* func_name, ast::expr_syntax* param, ast::func_call_syntax* param_group) {
    auto syntax = new ast::func_call_syntax;
    if(param_group) {
        syntax->params = param_group->params;
    }
    if(param) {
        syntax->params.insert(syntax->params.begin(), ptr<ast::expr_syntax>(param));
    }
    syntax->func_name = func_name;
    self = syntax;
}

void SyntaxAnalyseFuncCallGroup(ast::func_call_syntax* &self, ast::expr_syntax* param, ast::func_call_syntax* param_group) {
    auto syntax = new ast::func_call_syntax;
    if(param_group) {
        syntax->params = param_group->params;
    }
    syntax->params.insert(syntax->params.begin(), ptr<ast::expr_syntax>(param));
    self = syntax;
}
#include "ir_printer.hpp"
#include "ir/ir.hpp"
#include "parser/SyntaxTree.hpp"
#include <memory>

void ir::IrPrinter::visit(ir_reg &node)
{
    out << this->mapping[node.type] << " ";
    out << "%" << "r" <<node.id;
}

void ir::IrPrinter::visit(ir_constant &node)
{
    out << mapping[node.type] << " ";
    auto value = node.init_val.value();
    if(std::holds_alternative<int>(value)){
        out << std::get<int>(value);
    }else{
        out << std::get<float>(value);
    }
}

void ir::IrPrinter::visit(ir_basicblock &node)
{
    if(!node.instructions.size()) return;
    out << node.name << ":" << std::endl;
    for(auto & inst : node.instructions)
        inst->accept(*this);
}
void ir::IrPrinter::visit(ir_module& node){
    for(auto & [name,func] : node.usrfuncs){
        func->accept(*this);
    }
}

void ir::IrPrinter::visit(ir_userfunc &node)
{    
    out << "define" << " " << "dso_local" << " " << mapping[node.rettype]
    <<  " " << "@" << node.name <<"(";
    for(auto a : node.func_args) {
        if(a != node.func_args.front()) {
            out << ", ";
        }
        out << mapping[a->addr->type] << " %r" << a->addr->id;
    }
    out << ")"<< " " <<"{" << std::endl;
    for(auto & bb : node.bbs)
        bb->accept(*this);
    out << "}" << std::endl;
}

void ir::IrPrinter::visit(store &node)
{
    out << "\t" << "store ";
    node.value->accept(*this);
    out << "," << " ";
    node.addr->accept(*this);
    out << std::endl;
}

void ir::IrPrinter::visit(jump &node)
{
    out<<"\t"<<"br "<<"label "<<"%"<<node.target->name<<std::endl;
}

void ir::IrPrinter::visit(br &node)
{
    out << "\t" << "br" << " ";
    out << "i1 ";
    out << this->get_value(node.cond);
    out << ",label ";
    out << "%" <<  node.target_true->name;
    out << ",label ";
    out << "%" <<  node.target_false->name;
    out << std::endl;
}

void ir::IrPrinter::visit(ret &node)
{
    if(!node.has_return_value)
        out << '\t' << "ret" << " "<< "void" << std::endl;
    else{
        out << "\t" << "ret" << " ";
        node.value->accept(*this);
        out << std::endl;
    }
}

void ir::IrPrinter::visit(load &node)
{
    out << "\t" << "%r"<< node.dst->id <<" = "<< "load " << mapping[node.dst->type] << "," << " ";
    node.addr->accept(*this);
    out << std::endl; 
}

void ir::IrPrinter::visit(alloc &node)
{
    out<<"\t"<<"%";
    out<<"r"<< node.var->addr->id;
    out<<" = "<<"alloca ";

    if(node.var->dim && node.var->dim->has_first_dim) {
        for(auto a : node.var->dim->dimensions) {
            out << "[" << a->calc_res() << " x ";
            if(a == node.var->dim->dimensions.back()) {
                out<<base_type[node.var->addr->type];
            }
            // out << "]";
        }
        for(auto a : node.var->dim->dimensions) {
            out << "]";
        }
    }
    else {
        out<<base_type[node.var->addr->type];
    }

    out << " , align 4";
    out<<std::endl;
}

void ir::IrPrinter::visit(phi &node)
{
    out << "\t";
    out << "%r" << node.dst->id << " = " <<  "phi" << " " << mapping[node.dst->type] << " ";
    for(int i = 0 ; i < node.uses.size(); ++i){
        auto & [a,b] = node.uses[i];
        out << "[" << " ";
        out << this->get_value(a);
        out << "," ;
        out << "%" << b->name << " " << "]" ;
        if(i != node.uses.size() - 1) out << ", ";
    }
    out << std::endl;
}

void ir::IrPrinter::visit(unary_op_ins &node)
{
    out << "\t" << "%";
    auto dst_r = std::dynamic_pointer_cast<ir::ir_reg>(node.dst);
    out << "r" << dst_r->id << " = ";
    out << mapping[node.op] << " ";
    node.src->accept(*this);
    out << ", ";
    if(node.op == unaryop::minus) {
        out << "-1";
    }
    else if(node.op == unaryop::plus) {
        out << "1";
    }
    else if(node.op == unaryop::op_not) {
        out << "true";
    }
    out << std::endl;
}

void ir::IrPrinter::visit(binary_op_ins &node)
{
    out<<"\t"<<"%";
    auto dst_r = std::dynamic_pointer_cast<ir::ir_reg>(node.dst);
    out<<"r"<<dst_r->id<<" = ";
    out<<mapping[node.op] << " ";
    if(node.op != binop::divide){
        out<<"nsw ";
    }
    node.src1->accept(*this);
    out<<", ";
    out << this->get_value(node.src2);
    out<<std::endl;
}

void ir::IrPrinter::visit(cmp_ins &node)
{
    out << "\t" << "%r" << node.dst->id << " = icmp "<< mapping[node.op] << " ";
    auto src1_r = std::dynamic_pointer_cast<ir::ir_constant>(node.src1);
    if(src1_r){
        out << mapping[src1_r->type] << " ";
        auto value = src1_r->init_val.value();
        if(std::holds_alternative<int>(value)){
            out << std::get<int>(value);
        }else{
            out << std::get<float>(value);
        }
    }else{
        auto aa = std::dynamic_pointer_cast<ir::ir_reg>(node.src1);
        out << mapping[aa->type] << " "<< "%r" << aa->id;
    }
    out << ",";
    out << this->get_value(node.src2);
    out<<std::endl;
}

void ir::IrPrinter::visit(logic_ins &node)
{
    auto dst = std::dynamic_pointer_cast<ir::ir_reg>(node.dst);
    out << "\t" << "%r" << dst->id << " = " << mapping[node.op] << " ";
    out << "i1 ";
    out << "%r" << get_value(node.src1) << ", %r" << get_value(node.src2);
    out << "\n";
}

void ir::IrPrinter::visit(get_element_ptr &node) {
    auto dst = std::dynamic_pointer_cast<ir::ir_reg>(node.dst);
    out << "\t" << "%r" << dst->id << " = getelementptr ";
    // for(auto a : node.base->dim->dimensions) {
    for(auto a : node.base->dim->dimensions) {
        out << "[" << a->calc_res() << " x ";
        if(a == node.base->dim->dimensions.back()) {
            out<<base_type[node.base->addr->type];
        }
        // out << "]";
    }
    for(auto a : node.base->dim->dimensions) {
        out << "]";
    }
    // }
    out << ", ";
    // for(auto a : node.base->dim->dimensions) {
    for(auto a : node.base->dim->dimensions) {
        out << "[" << a->calc_res() << " x ";
        if(a == node.base->dim->dimensions.back()) {
            out<<base_type[node.base->addr->type];
        }
        // out << "]";
    }
    for(auto a : node.base->dim->dimensions) {
        out << "]";
    }
    // }
    out << "* ";
    out << get_value(node.base->get_addr());
    if(node.base->dim->has_first_dim) {
        out << ", i32 0";
    }
    for(auto offset : node.obj_offset) {
        out << ", i32 " << get_value(offset)/* << offset*/;
    }
    out << "\n";
}

void ir::IrPrinter::visit(ir::while_loop &node) {
    out<<"\t"<<"br "<<"label "<<"%"<<node.cond_from->name<<std::endl;
}

void ir::IrPrinter::visit(ir::break_or_continue &node) {
    out<<"\t"<<"br "<<"label "<<"%"<<node.target->name<<std::endl;
}

void ir::IrPrinter::visit(ir::func_call &node) {
    out << "\t";
    if(node.ret_reg) {
        out << "%r" << node.ret_reg->id << " = ";
    }
    out << "call " << mapping[node.ret_type] << " @" << node.func_name;
    out << "(";
    for(auto par = node.params.begin(); par != node.params.end(); par++) {
        (*par)->accept(*this);
        if(par != node.params.end() - 1) {
            out << ", ";
        }
    }
    out << ")";
    out << std::endl;
}

std::string ir::IrPrinter::get_value(const ptr<ir::ir_value> &val)
{
    std::string ans;
    auto aa = std::dynamic_pointer_cast<ir::ir_constant>(val);
    if(aa){
        auto value = aa->init_val.value();
        if(std::holds_alternative<int>(value)){   
           ans += std::to_string(std::get<int>(value));
        }else{
            ans += std::to_string(std::get<float>(value));
        }
    }else{
        auto aa = std::dynamic_pointer_cast<ir::ir_reg>(val);
        ans += ("%r" + std::to_string(aa->id));
    }
    return ans;
}

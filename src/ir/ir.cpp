#include "ir/ir.hpp"
#include <algorithm>
#include <bitset>
#include <cstdlib>
#include <iomanip>
#include <iterator>
#include <memory>
#include <string>
#include <unordered_map>
#include <set>
#include "ir.hpp"
#include "loongarch/arch.hpp"
#include "loongarch/register_allocator.hpp"
#include "parser/SyntaxTree.hpp"
#include <functional>
void ir::ir_reg::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}
void ir::ir_reg::print(std::ostream & out ) { 
    out << "%r" << this->id << '\t';
}

vartype ir::ir_reg::get_type() {
    return this->type;
}

string ir::ir_reg::get_val() {
    abort();
    return "";
}

string ir::ir_reg::get_name() {
    return "g" + std::to_string(this->id);
}

void ir::ir_memobj::accept(ir_visitor &visitor) {

}
void ir::ir_memobj::print(std::ostream & out ) {
    out << this->name << " ";
    out << this->size << std::endl;
}
void ir::ir_scope::accept(ir_visitor &visitor) {

}
void ir::ir_scope::print(std::ostream & out )
{
}
void ir::ir_basicblock::push_back(ptr<ir_instr> inst)
{
    this->instructions.push_back(inst);
}

void ir::ir_basicblock::push_front(ptr<ir_instr> inst) {
    this->instructions.push_front(inst);
}

ptr<ir::ir_instr> ir::ir_basicblock::pop_back() {
    auto back = this->instructions.back();
    this->instructions.pop_back();
    return back;
}

void ir::ir_basicblock::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::ir_basicblock::print(std::ostream & out )
{
}

std::shared_ptr<ir::ir_instr> ir::ir_basicblock::getLastInst() {
  return this->instructions.back();
}
std::shared_ptr<ir::ir_instr> ir::ir_basicblock::getFirstInst() {
  return this->instructions.front();
}
std::string ir::ir_basicblock::getName() { return this->name; }

void ir::ir_basicblock::for_each(std::function<void(std::shared_ptr<ir::ir_instr>)> f, bool isReverse) {
    if(!isReverse){
        for(auto & inst : this->instructions){
            f(inst);
        }
    }else{
        auto reverseInstruction(this->instructions);
        std::reverse(this->instructions.begin(),this->instructions.end());
        for(auto & inst : reverseInstruction){
            f(inst);
        }
        std::reverse(this->instructions.begin(),this->instructions.end());
    }
}

void ir::ir_basicblock::del_ins_by_vec(ptr_list<ir::ir_instr> del_ins) {
    for(auto del_item : del_ins) {
        this->instructions.remove(del_item);
    }
}

ptr<ir::ir_userfunc> ir::ir_module::new_func(std::string name, std::vector<vartype> arg_types) {
  auto pfunc = std::make_shared<ir_userfunc>(name, this->global_var_cnt, arg_types);
  usrfuncs.push_back({name, pfunc});
  return pfunc;
}

void ir::ir_module::add_lib_func(std::string name, ptr<ir_libfunc> fun) {
  libfuncs.push_back({name, fun});
  return;
}

ptr<ir::global_def> ir::ir_module::new_global(std::string name, vartype type) {
    auto reg = std::make_shared<ir_reg>(this->global_var.size(), type, 4, true);
    auto obj = std::make_shared<ir_memobj>(name, reg, 4);
    auto var = std::make_shared<global_def>(name, obj);
    global_var.push_back({name, var});
//   usrfuncs.push_back({name, pfunc});
    return var;
}

void ir::ir_module::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::ir_module::print(std::ostream & out)
{
}

void ir::ir_module::reg_allocate(int base_reg, ptr_list<global_def> global_var) {
    if(this->init_block) {
        LoongArch::ColoringAllocator allocator(this->global_init_func, base_reg, global_var);
        // auto ret = allocator.run();
        this->global_init_func->reg_allocate(allocator);
    }
    for(auto & [name, func] : this->usrfuncs){
        LoongArch::ColoringAllocator allocator(func, base_reg, global_var);     // 我修改了allocator的构造函数
        // auto ret = allocator.run();                                 // 我也修改了run方法的返回值
        func->reg_allocate(allocator);
    }
}

ir::ir_userfunc::ir_userfunc(std::string name, int reg_cnt, std::vector<vartype> arg_types) : ir_func(name, arg_types), max_reg(reg_cnt) {
    this->scope = std::make_unique<ir::ir_scope>();
}

ptr<ir::ir_memobj> ir::ir_userfunc::new_obj(std::string name, vartype var_type) {
    std::unordered_map<vartype, vartype> var_reg_trans = {{vartype::INT, vartype::INTADDR}, {vartype::FLOAT, vartype::FLOATADDR}, {vartype::BOOL, vartype::BOOLADDR}, {vartype::FBOOL, vartype::FBOOLADDR}};
  auto addr = this->new_reg(var_reg_trans[var_type]);
  auto obj = std::make_shared<ir_memobj>(name, addr, i32_size);
  this->scope->ir_objs.push_back(obj);
  return obj;
}

ptr<ir::ir_reg> ir::ir_userfunc::new_reg(vartype type)
{
    int reg_size = 4;
    return std::make_shared<ir_reg>(max_reg++,type,reg_size, false);
}

ptr<ir::ir_basicblock> ir::ir_userfunc::new_block()
{
    auto bb = std::make_shared<ir_basicblock>(max_bb++);
    if(dealing_while) {
        bb->mark_while();
    }
    this->bbs.push_back(bb);
    return bb;
}

void ir::ir_userfunc::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::ir_userfunc::print(std::ostream & out)
{
}

void ir::ir_libfunc::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::ir_libfunc::print(std::ostream & out)
{
}

std::unordered_map<ptr<ir::ir_value>,Pass::LiveInterval> ir::ir_userfunc::GetLiveInterval() 
{
    
}

std::vector<ptr<ir::ir_basicblock>> ir::ir_userfunc::GetLinerSequence() 
{
   
}

void ir::ir_userfunc::reg_allocate(LoongArch::ColoringAllocator allocator) {

    auto ret_int = allocator.run(LoongArch::Rtype::INT);
    for(auto res : ret_int.mapping_to_reg) {
        regAllocateOut.insert(res);
    }
    for(auto res : ret_int.mapping_to_spill) {
        regSpill.push_back(res);
    }
    auto ret_float = allocator.run(LoongArch::Rtype::FLOAT);
    for(auto res : ret_float.mapping_to_reg) {
        regAllocateOut.insert(res);
    }
    for(auto res : ret_float.mapping_to_spill) {
        regSpill.push_back(res);
    }
    auto ret_fbool = allocator.run(LoongArch::Rtype::FBOOL);
    for(auto res : ret_fbool.mapping_to_reg) {
        regAllocateOut.insert(res);
    }
    for(auto res : ret_fbool.mapping_to_spill) {
        regSpill.push_back(res);
    }
    for(auto alloc : this->alloc_list) {
        this->arrobj.push_back(alloc->get_var());
    }
    // regAllocateOut = map;       // 成功分配的寄存器映射
    // regSpill = spill;           // 无法分配，被流放到内存中的寄存器
    // this->arrobj = arrobj;
}

void ir::ir_userfunc::save_current_globl(std::list<std::pair<std::string, ptr<ir::global_def>>> current_globl) {
    this->current_globl = current_globl;
}

ptr_list<ir::ir_basicblock> ir::ir_userfunc::check_predecessor(ptr<ir::ir_basicblock> tar) {
    // auto it = this->successor.find(tar);
    // if(it == this->successor.end()) {
    //     it = this->s_back_trace.find(tar);
    // }
    // return it->second;
    auto suc = this->predecessor[tar];
    auto bak = this->s_back_trace[tar];
    std::sort(suc.begin(), suc.end());
    std::sort(bak.begin(), bak.end());
    ptr_list<ir_basicblock> ret;
    std::set_union(
        suc.begin(), suc.end(),
        bak.begin(), bak.end(),
        std::back_inserter(ret)
    );
    return ret;
}

ptr_list<ir::ir_basicblock> ir::ir_userfunc::check_nxt(ptr<ir::ir_basicblock> tar) {
    // auto it = this->nxt.find(tar);
    // if(it == this->nxt.end()) {
    //     it = this->n_back_trace.find(tar);
    // }
    // return it->second;
    auto nxt = this->nxt[tar];
    auto bak = this->n_back_trace[tar];
    std::sort(nxt.begin(), nxt.end());
    std::sort(bak.begin(), bak.end());
    ptr_list<ir_basicblock> ret;
    std::set_union(
        nxt.begin(), nxt.end(),
        bak.begin(), bak.end(),
        std::back_inserter(ret)
    );
    return ret;
}

void ir::ir_userfunc::del_alloc(ptr_list<ir::alloc> del_items) {
    for(auto del_item : del_items) {
        auto it = std::find(this->alloc_list.begin(), this->alloc_list.end(), del_item);
        if(it != this->alloc_list.end()) {
            this->alloc_list.erase(it);
        }
    }
}

bool ir::ir_func::set_retype(vartype rettype)
{
    this->rettype = rettype; 
    return true;
}

void ir::store::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::store::print(std::ostream & out )
{
    out << "store" << '\t';
    out << "def:" << '\t';
    auto defs = this->def_reg();
    for(auto & i : defs){
        i->print();
    }
    out << "use:" << '\t';
    auto uses = this->use_reg();
    for(auto & i : uses){
        i->print();
    }
    out << '\n';
}

std::vector<ptr<ir::ir_value>> ir::store::use_reg() {
    return {this->addr,this->value};
}

std::vector<ptr<ir::ir_value>> ir::store::def_reg() {
    return {};
}

void ir::store::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {
    auto it = replace_map.find(this->value);
    if(it != replace_map.end()) {
        this->value = it->second;
    }
}

void ir::jump::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::jump::print(std::ostream & out )
{
    out << "br-jump" << '\t';
    out << "def:" << '\t';
    auto defs = this->def_reg();
    for(auto & i : defs){
        i->print();
    }
    out << "use:" << '\t';
    auto uses = this->use_reg();
    for(auto & i : uses){
        i->print();
    }
    out << '\n';
}

std::vector<ptr<ir::ir_value>> ir::jump::use_reg() {
  return {};
}

std::vector<ptr<ir::ir_value>> ir::jump::def_reg() {
  return {};
}

std::shared_ptr<ir::ir_basicblock> ir::jump::get_target() {
  return this->target;
}

void ir::jump::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {

}

void ir::br::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::br::print(std::ostream & out )
{
    out << "br" << '\t';
    out << "def:" << '\t';
    auto defs = this->def_reg();
    for(auto & i : defs){
        i->print();
    }
    out << "use:" << '\t';
    auto uses = this->use_reg();
    for(auto & i : uses){
        i->print();
    }
        out << '\n';
}

std::vector<ptr<ir::ir_value>> ir::br::use_reg() {
     return {this->cond};
}

std::vector<ptr<ir::ir_value>> ir::br::def_reg() { return std::vector<ptr<ir::ir_value>>(); }

void ir::br::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {        // sysy没有bool，br使用的都是icmp比较出来的条件，所以不用换？
    auto it = replace_map.find(this->cond);
    if(it != replace_map.end()) {
        this->cond = it->second;
    }
}

void ir::ret::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::ret::print(std::ostream & out)
{
    out << "ret" << '\t';
    out << "def:" << '\t';
    auto defs = this->def_reg();
    for(auto & i : defs){
        i->print();
    }
    out << "use:" << '\t';
    auto uses = this->use_reg();
    for(auto & i : uses){
        i->print();
    }
        out << '\n';
}

std::vector<ptr<ir::ir_value>> ir::ret::use_reg() { return {this->value};}

std::vector<ptr<ir::ir_value>> ir::ret::def_reg() { return std::vector<ptr<ir::ir_value>>(); }

void ir::ret::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {
    auto it = replace_map.find(this->value);
    if(it != replace_map.end()) {
        this->value = it->second;
    }
}

void ir::load::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::load::print(std::ostream & out )
{
    out << "load" << '\t';
    out << "def:" << '\t';
    auto defs = this->def_reg();
    for(auto & i : defs){
        i->print();
    }
    out << "use:" << '\t';
    auto uses = this->use_reg();
    for(auto & i : uses){
        i->print();
    }
    out << '\n';
}

std::vector<ptr<ir::ir_value>> ir::load::use_reg() {
    return {addr};
}

std::vector<ptr<ir::ir_value>> ir::load::def_reg() {
    return {dst};
}

void ir::load::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {
    // auto it = replace_map.find(this->dst);
    // if(it != replace_map.end()) {
    //     auto is_reg = std::dynamic_pointer_cast<ir::ir_reg>(it->second);
    //     if(is_reg)
    //         this->dst = is_reg;
    // }
}

void ir::alloc::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::alloc::print(std::ostream & out )
{
    out << "alloc" << '\t';
    out << "def:" << '\t';
    auto defs = this->def_reg();
    for(auto & i : defs){
        i->print();
    }
    out << "use:" << '\t';
    auto uses = this->use_reg();
    for(auto & i : uses){
        i->print();
    }
    out << '\n';
}

std::vector<ptr<ir::ir_value>> ir::alloc::use_reg() {
  return std::vector<ptr<ir::ir_value>>();
}

std::vector<ptr<ir::ir_value>> ir::alloc::def_reg() {
  return {var->get_addr()};
}

void ir::alloc::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {

}

void ir::phi::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::phi::print(std::ostream & out )
{
    out << "phi" << '\t';
    out << "def:" << '\t';
    auto defs = this->def_reg();
    for(auto & i : defs){
        i->print();
    }
    out << "use:" << '\t';
    auto uses = this->use_reg();
    for(auto & i : uses){
        i->print();
    
    }
        out << '\n';
}

std::vector<ptr<ir::ir_value>> ir::phi::use_reg() {
    std::vector<ptr<ir::ir_value>> use_regs;
    std::vector<ptr<ir::ir_value>> use_values;
    for(auto & [value, bb] : this->uses) {
        if(auto reg = std::dynamic_pointer_cast<ir_reg>(value)){
            use_regs.push_back(value);
        }else if(auto constant_value = std::dynamic_pointer_cast<ir_constant>(value)){
            use_values.push_back(value);
        }
    }
    return use_regs;
}

std::vector<ptr<ir::ir_value>> ir::phi::def_reg() { 
    return {this->dst}; 
}

void ir::phi::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {
    for(auto &use : this->uses) {
        auto it = replace_map.find(use.first);
        if(it != replace_map.end()) {
            use.first = it->second;
        }
    }
}

void ir::unary_op_ins::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::unary_op_ins::print(std::ostream & out )
{
    
}

std::vector<ptr<ir::ir_value>> ir::unary_op_ins::use_reg() {
    return {this->src};
}

std::vector<ptr<ir::ir_value>> ir::unary_op_ins::def_reg() {
    return {this->dst};
};

void ir::unary_op_ins::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {
    auto it = replace_map.find(this->src);
    if(it != replace_map.end()) {
        this->src = it->second;
    }
}

void ir::binary_op_ins::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::binary_op_ins::print(std::ostream & out )
{
    out << "binary" << '\t';
    out << "def:" << '\t';
    auto defs = this->def_reg();
    for(auto & i : defs){
        i->print();
    }
    out << "use:" << '\t';
    auto uses = this->use_reg();
    for(auto & i : uses){
        i->print();
    }
}
std::vector<ptr<ir::ir_value>> ir::binary_op_ins::use_reg() {
  return {this->src1,this->src2};
}
std::vector<ptr<ir::ir_value>> ir::binary_op_ins::def_reg() {
  return {this->dst};
}

void ir::binary_op_ins::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {
    auto it = replace_map.find(this->src1);
    if(it != replace_map.end()) {
        this->src1 = it->second;
    }
    it = replace_map.find(this->src2);
    if(it != replace_map.end()) {
        this->src2 = it->second;
    }
}

void ir::ir_constant::accept(ir_visitor &visitor) {
     visitor.visit(*this);
}

void ir::ir_constant::print(std::ostream &out)
{
}

vartype ir::ir_constant::get_type() {
    return this->type;
}

string ir::ir_constant::get_val() {
    auto value = this->init_val.value();
    if(std::holds_alternative<int>(value)){
        return std::to_string(std::get<int>(value));
    }else{
        float num = std::get<float>(value);
        // double double_num = static_cast<double>(num);
        std::bitset<32> bits(*reinterpret_cast<unsigned int*>(&num));
        std::stringstream ss;
        ss << std::hex << std::setw(8) << std::setfill('0') << bits.to_ullong();
        return "0x" + ss.str();
    }
}

void ir::jumpList::accept(ir_visitor &visitor)
{
}

void ir::jumpList::print(std::ostream &out)
{
}

string ir::jumpList::get_val() {
    abort();
    return "";
}

void ir::cmp_ins::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::cmp_ins::print(std::ostream &out)
{
}

std::vector<ptr<ir::ir_value>> ir::cmp_ins::use_reg() {
  return {this->src1,this->src2};
}

std::vector<ptr<ir::ir_value>> ir::cmp_ins::def_reg() {
  return {this->dst};
}

void ir::cmp_ins::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {
    auto it = replace_map.find(this->src1);
    if(it != replace_map.end()) {
        this->src1 = it->second;
    }
    it = replace_map.find(this->src2);
    if(it != replace_map.end()) {
        this->src2 = it->second;
    }
}

void ir::logic_ins::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::logic_ins::print(std::ostream &out)
{
}

std::vector<ptr<ir::ir_value>> ir::logic_ins::use_reg() {
  return {this->src1,this->src2};
}

std::vector<ptr<ir::ir_value>> ir::logic_ins::def_reg() {
  return {this->dst};
}

void ir::logic_ins::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {
    auto it = replace_map.find(this->src1);
    if(it != replace_map.end()) {
        this->src1 = it->second;
    }
    it = replace_map.find(this->src2);
    if(it != replace_map.end()) {
        this->src2 = it->second;
    }
}

std::vector<ptr<ir::ir_value>> ir::reg_write_ins::use_reg() {
  return std::vector<ptr<ir::ir_value>>();
}

std::vector<ptr<ir::ir_value>> ir::reg_write_ins::def_reg() {
  return std::vector<ptr<ir::ir_value>>();
}

void ir::reg_write_ins::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {}    // 抽象类，不用换

std::vector<ptr<ir::ir_value>> ir::control_ins::use_reg() {
  return std::vector<ptr<ir::ir_value>>();
}

std::vector<ptr<ir::ir_value>> ir::control_ins::def_reg() {
  return std::vector<ptr<ir::ir_value>>();
}

void ir::control_ins::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {}      // 抽象类，不用换

void ir::get_element_ptr::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::get_element_ptr::print(std::ostream &out)
{
}

std::vector<ptr<ir::ir_value>> ir::get_element_ptr::use_reg() {
    ptr_list<ir_value> vec = this->obj_offset;
    vec.push_back(this->base->get_addr());
  return vec;
}

std::vector<ptr<ir::ir_value>> ir::get_element_ptr::def_reg() {
  return {this->dst};
}

void ir::get_element_ptr::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {
    for(auto &offset : this->obj_offset) {
        auto it = replace_map.find(offset);
        if(it != replace_map.end()) {
            offset = it->second;
        }
    }
}

void ir::while_loop::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::while_loop::print(std::ostream &out)
{
}

std::vector<ptr<ir::ir_value>> ir::while_loop::use_reg() {
  return {};
}

std::vector<ptr<ir::ir_value>> ir::while_loop::def_reg() {
  return {};
}

void ir::while_loop::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {}       // while回边，不用换

void ir::break_or_continue::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::break_or_continue::print(std::ostream &out)
{
}

std::vector<ptr<ir::ir_value>> ir::break_or_continue::use_reg() {
  return {};
}

std::vector<ptr<ir::ir_value>> ir::break_or_continue::def_reg() {
  return {};
}

ptr<ir::ir_basicblock> ir::break_or_continue::get_target() {
    return this->target;
}

void ir::break_or_continue::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {}    // while中的返回，不用换

void ir::func_call::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::func_call::print(std::ostream &out)
{
}

std::vector<ptr<ir::ir_value>> ir::func_call::use_reg() {
    return this->params;
//   return {};
}

std::vector<ptr<ir::ir_value>> ir::func_call::def_reg() {
  return {this->ret_reg};
}

void ir::func_call::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {
    for(auto it = params.begin(); it != params.end(); it++) {
        auto map_it = replace_map.find(*it);
        if(map_it != replace_map.end()) {
            *it = map_it->second;
        }
    }
}

void ir::global_def::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::global_def::print(std::ostream &out)
{
}

std::vector<ptr<ir::ir_value>> ir::global_def::use_reg() {
  return init_val;
}

std::vector<ptr<ir::ir_value>> ir::global_def::def_reg() {
  return {obj->get_addr()};
}

ptr<ir::ir_memobj> ir::global_def::get_obj() {
    return obj;
}

void ir::global_def::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {}       // mem2reg不处理全局变量，不用换？

void ir::trans::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::trans::print(std::ostream &out)
{
}

std::vector<ptr<ir::ir_value>> ir::trans::use_reg() {
  return {src};
}

std::vector<ptr<ir::ir_value>> ir::trans::def_reg() {
  return {dst};
}

void ir::trans::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {
    auto it = replace_map.find(this->src);
    if(it != replace_map.end()) {
        this->src = it->second;
    }
}

void ir::memset::accept(ir_visitor &visitor)
{
    visitor.visit(*this);
}

void ir::memset::print(std::ostream &out)
{
}

std::vector<ptr<ir::ir_value>> ir::memset::use_reg() {
  return {base};
}

std::vector<ptr<ir::ir_value>> ir::memset::def_reg() {
  return {};
}

void ir::memset::replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) {}       // memset不用换
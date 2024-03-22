#ifndef IR_HPP
#define IR_HPP

#include "loongarch/arch.hpp"
#include "parser/SyntaxTree.hpp"
#include "passes/pass_type.hpp"
#include <memory>
#include <set>
#include <variant>
#include <list>
#include <optional>
#include <unordered_map>
#include <queue>
#include <algorithm>
#include <functional>
#include <vector>

const int i32_size = 4;
namespace LoongArch{
    class ProgramBuilder;
    class IrMapping;
    class RookieAllocator;
    class Program;
    // class what;
}
namespace Pass {
struct LiveInterval {
    int l, r;
};
} // namespace Pass

namespace ir {

class IrBuilder;
class ir_visitor;
class IrPrinter;
class ir_func;
class ir_userfunc;
class ir_libfunc;

class ir_value;
class ir_reg;
class ir_constant;

class ir_basicblock;
class ir_memobj;

class ir_instr;
class alloc;
class binary_op_ins;
class br;
class store;
class phi;
class jump;
class load;
class ret;
class cmp_ins;
class control_ins;

class get_element_ptr;
class while_loop;
class break_or_continue;
class func_call;
class global_def;
class trans;
class memset;

class printable {
    virtual void accept(ir_visitor& visitor) = 0;
    virtual void print(std::ostream & out = std::cout) = 0;
};
class ir_value {
    friend IrPrinter;
    friend LoongArch::ProgramBuilder;
public:
    virtual void accept(ir_visitor& visitor) = 0;
    virtual void print(std::ostream & out = std::cout) = 0;
    virtual vartype get_type() = 0;
    virtual string get_val() = 0;
    virtual void mark_def_loc(ptr<ir::ir_instr> loc) = 0;
    virtual ptr<ir::ir_instr> get_def_loc() = 0;
};

class ir_reg : public ir_value {
    friend IrBuilder;
    friend IrPrinter;
    friend LoongArch::IrMapping;
    friend LoongArch::ProgramBuilder;
    friend LoongArch::RookieAllocator;
private:
    int id;                                                     //virtual register id
    vartype type;                                               //int or float (extension)
    int size;                                                   //some byte
    string global_name;
    bool is_global;
    bool is_const;
    bool is_arr = false;
    bool is_param = false;
    bool is_local = false;
    ptr<ir::ir_instr> def_at;
public:
    ir_reg(int id,vartype type,int size, bool is_global) : id(id) , type(type), size(size), is_global(is_global) {}
    // ir_reg(string global_name, vartype type, int size) : global_name(global_name), type(type), size(size), is_global(true) {}
    bool operator==(const ir_reg& rhs) {return (id == rhs.id && type == rhs.type && is_global == rhs.is_global);}
    bool operator==(ir_reg& rhs) {return (id == rhs.id && type == rhs.type && is_global == rhs.is_global);}
    bool operator<(ir_reg& rhs) {return id < rhs.id;}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual vartype get_type() override final;
    virtual string get_val() override final;
    string get_name();
    bool check_is_param() {return this->is_param;}
    void mark_local() {is_local = true;}
    bool check_local() {return is_local;}
    virtual void mark_def_loc(ptr<ir::ir_instr> loc) override final {def_at = loc;}
    virtual ptr<ir::ir_instr> get_def_loc() override final {return def_at;}
};
class ir_constant : public ir_value {
    friend IrBuilder;
    friend IrPrinter;
    friend LoongArch::ProgramBuilder;
private:
    vartype type;
    std::optional<std::variant<int,float>> init_val;
public:
    ir_constant(std::optional<std::variant<int,float>> init_val) : init_val(init_val) {}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual vartype get_type() override final;
    virtual string get_val() override final;
    void set_type(vartype type) {this->type = type;}
    virtual void mark_def_loc(ptr<ir::ir_instr> loc) override final {}
    virtual ptr<ir::ir_instr> get_def_loc() override final  {return nullptr;}
};

class jumpList : public ir_value {
    friend IrBuilder;
    std::vector<ptr<ir_basicblock>*> trueList;
    std::vector<ptr<ir_basicblock>*> falseList;
public:
    virtual void accept(ir_visitor& visitor);
    virtual void print(std::ostream & out = std::cout);
    virtual string get_val() override final;
};

class ir_memobj : public printable {
    friend IrBuilder;
    friend IrPrinter;
    friend LoongArch::ProgramBuilder;
    friend LoongArch::RookieAllocator;
protected:
    std::string name;
    int size;
    std::shared_ptr<ir_reg> addr;
    ptr<ast::var_dimension_syntax> dim;
public:
    ptr<ir_reg> get_addr() { return this->addr;};
    int get_size() {return this->size;}
    ptr<ast::var_dimension_syntax> get_dim() {return this->dim;};
    ir_memobj(std::string name , ptr<ir_reg> addr, int size) : name(name) , addr(addr) , size(size) {}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    bool is_arr() {return this->dim != nullptr;}
};

class ir_func_arg : public ir_memobj {
    int id;
};

class ir_scope : public printable {
    friend LoongArch::ProgramBuilder;
    friend ir_userfunc;
    std::list<std::shared_ptr<ir_memobj>> ir_objs;
public:
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
};

class ir_instr : public printable {
private:
    ptr<ir::ir_userfunc> map_to_fun;
    ptr<ir::ir_basicblock> map_to_block;
public:
    void mark_fun(ptr<ir::ir_userfunc> fun) {map_to_fun = fun;}
    ptr<ir::ir_userfunc> get_fun() {return map_to_fun;}
    void mark_block(ptr<ir::ir_basicblock> block) {map_to_block = block;}
    ptr<ir::ir_basicblock> get_block() {return map_to_block;}
    virtual void accept(ir_visitor& visitor) = 0;
    virtual void print(std::ostream & out = std::cout) = 0;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() = 0;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() = 0;     
    virtual void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) = 0;
};

class ir_basicblock : public printable {
    friend IrPrinter;   
    friend LoongArch::ProgramBuilder; 
    friend LoongArch::RookieAllocator;
    std::string name;
    std::list<std::shared_ptr<ir_instr>> instructions;
    bool is_while_body = false;
    bool is_entry = false;
    bool is_return_bb = false;
    ptr<ir::ir_userfunc> cur_func;
    ptr<ir::ir_basicblock> cur_block_ptr;
public:
    int id;
    ir_basicblock(int id) : id(id) { name = "bb"+std::to_string(id); };
    void push_back(ptr<ir_instr> inst);
    void push_front(ptr<ir_instr> inst);
    ptr<ir_instr> pop_back();
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    bool operator<(ir::ir_basicblock & rhs){return this->id < rhs.id;}
    std::shared_ptr<ir_instr> getLastInst();
    std::shared_ptr<ir_instr> getFirstInst();
    std::string getName();
    void for_each(std::function<void(std::shared_ptr<ir::ir_instr> inst)> f,bool isReverse);
    void mark_while() {this->is_while_body = true;}
    std::list<std::shared_ptr<ir_instr>> get_instructions() {return instructions;}
    std::list<std::shared_ptr<ir_instr>>& get_instructions_ref() {return instructions;}
    void mark_entry() {is_entry = true;}
    bool check_is_entry() {return is_entry;}
    void del_ins(ptr<ir::ir_instr> ins);
    void del_ins_by_vec(ptr_list<ir::ir_instr> del_ins);
    void mark_ret() {is_return_bb = true;}
    bool is_ret() {return is_return_bb;}
    void mark_fun(ptr<ir::ir_userfunc> fun) {cur_func = fun;}
    ptr<ir::ir_userfunc> get_fun() {return cur_func;}
    void mark_block(ptr<ir::ir_basicblock> block) {cur_block_ptr = block;}
    ptr<ir::ir_basicblock> get_block() {return cur_block_ptr;}
};


class ir_func : public printable {
friend IrBuilder;
protected:
    std::string name;
    vartype rettype;
    std::unordered_map<int,ir_func_arg> args;                   // TODO: 我没有采用这个args
    std::vector<vartype> arg_types;
    std::set<ptr<ir::ir_userfunc>> caller;
    bool is_pure = false;
public:
    ir_func(std::string name, vector<vartype> arg_types) : name(name), arg_types(arg_types) {}
    bool set_retype(vartype rettype);
    vartype get_rettype() {return rettype;}
    virtual void accept(ir_visitor& visitor) = 0;
    virtual void print(std::ostream & out = std::cout) = 0;
    void add_caller(ptr<ir::ir_userfunc> fun) {this->caller.insert(fun);}
    void mark_pure() {this->is_pure = true;}
    void clear_pure() {this->is_pure = false;}
    bool check_pure() {return this->is_pure;}
    std::set<ptr<ir::ir_userfunc>> get_caller() {return caller;}
};

class ir_module : public printable {
    friend IrPrinter;
private:
    std::set<Passes::PassType> processed_passes;
protected:
    std::unique_ptr<ir_scope> scope;

public:    
    std::list<std::pair<std::string,std::shared_ptr<ir_userfunc>>> usrfuncs;
    ptr<ir_userfunc> global_init_func;
    ptr<ir_basicblock> init_block;
    std::list<std::pair<std::string,std::shared_ptr<ir_libfunc>>> libfuncs;
    std::list<std::pair<std::string,std::shared_ptr<global_def>>> global_var;
    int global_var_cnt = 0;
    bool enable_mem_set = false;
    ir_module(){
        this->scope = std::make_unique<ir_scope>();
        std::vector<vartype> empty;
        this->global_init_func = std::make_shared<ir_userfunc>("global_init", global_var_cnt, empty);
    }
    ptr<ir_userfunc> new_func(std::string name, std::vector<vartype> arg_types);
    void add_lib_func(std::string name, ptr<ir_libfunc> fun);
    ptr<global_def> new_global(std::string name, vartype type);
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual void reg_allocate(int base_reg, ptr_list<global_def> global_var);
    void mark_passes_completed(Passes::PassType tar) {processed_passes.insert(tar);};
    bool check_passes_completed(Passes::PassType tar) {return processed_passes.find(tar) != processed_passes.end();}
};

//below is func
class ir_libfunc : public ir_func {
public:
    friend IrPrinter;
    friend IrBuilder;
    friend LoongArch::ProgramBuilder;
    friend LoongArch::RookieAllocator;
private:
    std::vector<ptr<ir::ir_memobj>> func_args;
public:
    ir_libfunc(std::string name, int reg_cnt, std::vector<vartype> arg_types) : ir_func(name, arg_types) {} 
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
};

class ir_userfunc : public ir_func , public std::enable_shared_from_this<ir_userfunc> {
public:
    friend IrPrinter;
    friend IrBuilder;
    friend LoongArch::ProgramBuilder;
    friend LoongArch::RookieAllocator;
private:
    std::unique_ptr<ir_scope> scope;
    std::list<std::shared_ptr<ir_basicblock>> bbs;
    int max_reg, max_bb;
    ptr<ir_basicblock> entry;
    std::unordered_map<int,std::shared_ptr<ir::ir_instr>> revInstLineNumber;
    std::unordered_map<std::shared_ptr<ir::ir_instr>,int> instLineNumber;
    std::unordered_map<std::shared_ptr<ir::ir_reg>, LoongArch::Reg> regAllocateOut;

    std::vector<ptr<ir::ir_memobj>> func_args;
    std::vector<std::shared_ptr<ir::ir_reg>> regSpill;
    ptr_list<ir::ir_memobj> arrobj;
    std::list<std::pair<std::string, ptr<ir::global_def>>> current_globl;
    ptr_list<ir::alloc> alloc_list;
    bool dealing_while = false;
    std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> predecessor;
    // std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> s_back_trace;
    std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> nxt;
    // std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> n_back_trace;

    ptr<ir::ir_userfunc> cur_fun_ptr;
    bool analysed_cfg = false;
public:
    ir_userfunc(std::string name, int reg_cnt, std::vector<vartype> arg_tpyes); 
    ptr<ir_memobj> new_obj(std::string name, vartype var_type);
    ptr<ir_reg> new_reg(vartype type);//自动创建序号递增的寄存器
    ptr<ir_basicblock> new_block();//创建BB
    virtual void accept(ir_visitor& visitor);
    virtual void print(std::ostream & out = std::cout) override;
    std::unordered_map<ptr<ir::ir_value>,Pass::LiveInterval> GetLiveInterval();
    std::vector<std::shared_ptr<ir_basicblock>> GetLinerSequence();
    virtual void reg_allocate(LoongArch::RookieAllocator allocator);
    void save_current_globl(std::list<std::pair<std::string, ptr<ir::global_def>>> current_globl);
    std::list<std::shared_ptr<ir_basicblock>> get_bbs() {return bbs;}
    std::list<std::shared_ptr<ir_basicblock>>& get_bbs_ref() {return bbs;}
    // void set_predecessor(std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> predecessor, std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> s_back_trace) {this->predecessor = predecessor; this->s_back_trace = s_back_trace;}
    void set_predecessor(std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> predecessor) {this->predecessor = predecessor;}
    // void set_nxt(std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> nxt, std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> n_back_trace) {this->nxt = nxt; this->n_back_trace = n_back_trace;}
    void set_nxt(std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>> nxt) {this->nxt = nxt;}
    ptr_list<ir::ir_basicblock> check_predecessor(ptr<ir::ir_basicblock> tar);
    ptr_list<ir::ir_basicblock> check_nxt(ptr<ir::ir_basicblock> tar);
    std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>>& get_predecessor_ref() {return predecessor;}
    std::unordered_map<ptr<ir::ir_basicblock>, ptr_list<ir::ir_basicblock>>& get_nxt_ref() {return nxt;}
    ptr_list<ir::alloc> get_var_list() {return alloc_list;}
    ptr<ir::ir_basicblock> get_entry() {return entry;}
    void del_alloc(ptr_list<ir::alloc> del_items);
    std::vector<ptr<ir::ir_memobj>> get_params() {return func_args;}
    // std::set<ptr<ir::ir_userfunc>> get_caller() {return caller;}
    void mark_fun(ptr<ir::ir_userfunc> fun) {cur_fun_ptr = fun;}
    ptr<ir::ir_userfunc> get_fun() {return cur_fun_ptr;}
    void mark_analysed() {this->analysed_cfg = true;}
    bool check_analysed() {return this->analysed_cfg;}
};

//below is instruction
class reg_write_ins : public ir_instr {

    virtual void accept(ir_visitor& visitor) = 0;
    virtual void print(std::ostream & out = std::cout) = 0;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override;
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

class control_ins : public ir_instr {
    virtual void accept(ir_visitor& visitor) = 0;
    virtual void print(std::ostream & out = std::cout) = 0;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override;
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

class store : public ir_instr {
    friend IrPrinter;
    friend LoongArch::ProgramBuilder;
    ptr<ir_reg> addr;
    ptr<ir_value> value;
public:
    store(ptr<ir_reg> addr,ptr<ir_value> value):addr(addr),value(value){}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    ptr<ir_reg> get_addr() {return addr;}
    ptr<ir_value> get_value() {return value;}
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

class jump : public control_ins {
    friend IrPrinter;
    friend LoongArch::ProgramBuilder;
    friend LoongArch::RookieAllocator;
    ptr<ir_basicblock> target;
public:
    jump(ptr<ir_basicblock> target):target(target){}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    ptr<ir::ir_basicblock> get_target();
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

class br : public control_ins {
    friend IrBuilder;
    friend IrPrinter;
    ptr<ir_value> cond;
    ptr<ir_basicblock>target_true, target_false;
public:
    ptr<ir_basicblock> get_target_true() {return this->target_true;};
    ptr<ir_basicblock> get_target_false() { return this->target_false;};
    void set_target_true(ptr<ir_basicblock> bb){this->target_true=bb;}
    void set_target_false(ptr<ir_basicblock> bb){this->target_false=bb;}
    br(ptr<ir_value> cond,ptr<ir_basicblock> target_true,ptr<ir_basicblock> target_false):cond(cond), target_true(target_true),target_false(target_false){}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    ptr<ir::ir_value> get_cond() {return this->cond;}
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

class ret : public control_ins {
    friend IrPrinter;
    friend LoongArch::ProgramBuilder;
    ptr<ir_value> value;
    bool has_return_value = false;
public:
    ret(ptr<ir_value>  value,bool has_return_value):value(value),has_return_value(has_return_value){}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

class load : public reg_write_ins {
    friend IrPrinter;
    friend LoongArch::ProgramBuilder;
    ptr<ir_reg> dst;
    ptr<ir_reg>  addr;
public:
    load(ptr<ir_reg> dst,ptr<ir_reg> addr): dst(dst),addr(addr){}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    ptr<ir_reg> get_addr() {return addr;}
    ptr<ir_reg> get_dst() {return dst;}
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

class alloc : public reg_write_ins {
    friend IrPrinter;
    friend LoongArch::ProgramBuilder;
    friend LoongArch::RookieAllocator;
    ptr<ir_memobj> var;
public:
    alloc(ptr<ir_memobj>  var):var(var){}
    ptr<ir_memobj> get_var() {return var;}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
    bool is_arr() {return this->var->is_arr();}
};

class phi : public reg_write_ins {
public:
    friend IrPrinter;    
    friend class IrBuilder;
    std::vector<std::pair<ptr<ir_value>,ptr<ir_basicblock>>> uses;
    ptr<ir_reg> dst;
public:
    phi(ptr<ir_reg> dst): dst(dst) {}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

class unary_op_ins : public reg_write_ins {
    friend IrPrinter;    
    friend LoongArch::ProgramBuilder;
    std::shared_ptr<ir_value> dst, src;
    unaryop op;
public:
    unary_op_ins(ptr<ir_value> dst,ptr<ir_value> src,unaryop op) : dst(dst), src(src), op(op) {}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    ptr<ir::ir_value> get_src() {return this->src;}
    ptr<ir::ir_value> get_dst() {return this->dst;}
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

class binary_op_ins : public reg_write_ins {
    friend IrPrinter;
    friend LoongArch::ProgramBuilder;
    std::shared_ptr<ir_value> dst, src1,src2;
    binop op;
public:
    binary_op_ins(ptr<ir_value> dst,ptr<ir_value> src1,ptr<ir_value> src2,binop op) : dst(dst), src1(src1), src2(src2), op(op) {}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

class cmp_ins : public reg_write_ins {
    friend IrPrinter;
    friend LoongArch::ProgramBuilder;
    std::shared_ptr<ir_value> src1,src2;
    std::shared_ptr<ir_reg> dst;
    relop op;
public:
    cmp_ins(ptr<ir_reg> dst,ptr<ir_value> src1,ptr<ir_value> src2,relop op) : dst(dst), src1(src1), src2(src2), op(op) {}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    ptr_list<ir::ir_value> get_src() {return {this->src1, this->src2};}
    ptr<ir::ir_value> get_dst() {return this->dst;}
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

class logic_ins : public reg_write_ins {
    friend IrPrinter;
    friend LoongArch::ProgramBuilder;
    std::shared_ptr<ir_value> dst, src1,src2;
    relop op;
public:
    logic_ins(ptr<ir_value> dst,ptr<ir_value> src1,ptr<ir_value> src2,relop op) : dst(dst), src1(src1), src2(src2), op(op) {}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    ptr_list<ir::ir_value> get_src() {return {this->src1, this->src2};}
    ptr<ir::ir_value> get_dst() {return this->dst;}
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

class ir_visitor {
public:
    virtual void visit(ir_reg &node) = 0;
    virtual void visit(ir_constant &node) = 0;
    virtual void visit(ir_basicblock &node) = 0;
    virtual void visit(ir_module &node) = 0;
    virtual void visit(ir_userfunc &node) = 0;
    virtual void visit(ir_libfunc &node) = 0;
    virtual void visit(store &node) = 0;
    virtual void visit(jump &node) = 0;
    virtual void visit(br &node) = 0;
    virtual void visit(ret &node) = 0;
    virtual void visit(load &node) = 0;
    virtual void visit(alloc &node) = 0;
    virtual void visit(phi &node) = 0;
    virtual void visit(unary_op_ins &node) = 0;
    virtual void visit(binary_op_ins &node) = 0;
    virtual void visit(cmp_ins &node) = 0;
    virtual void visit(logic_ins &node) = 0;
    virtual void visit(get_element_ptr &node) = 0;
    virtual void visit(while_loop &node) = 0;
    virtual void visit(break_or_continue &node) = 0;
    virtual void visit(func_call &node) = 0;
    virtual void visit(global_def &node) = 0;
    virtual void visit(trans &node) = 0;
    virtual void visit(ir::memset &node) = 0;
};

class get_element_ptr : public ir_instr {
    friend IrPrinter;
    friend LoongArch::ProgramBuilder;
    friend LoongArch::RookieAllocator;
private:
    ptr<ir_memobj> base;
    ptr<ir_reg> dst;
    ptr_list<ir_value> obj_offset;
public:
    get_element_ptr(ptr<ir_memobj> base, ptr<ir_reg> dst, ptr_list<ir_value> offset) : base(base), dst(dst), obj_offset(offset) {}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

class while_loop : public ir_instr {
    friend IrPrinter;
    friend LoongArch::ProgramBuilder;
    friend LoongArch::RookieAllocator;
private:
    ptr<ir_basicblock> cond_from;
    ptr<ir_basicblock> self;
    ptr<ir_basicblock> out_block;
public:
    while_loop(ptr<ir_basicblock> cond_from, ptr<ir_basicblock> self, ptr<ir_basicblock> out_block) : cond_from(cond_from), self(self), out_block(out_block) {}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    ptr<ir_basicblock> get_out_block() {return out_block;}
    ptr<ir_basicblock> get_cond_from() {return cond_from;}
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

class break_or_continue : public control_ins {
    friend IrPrinter;
    friend LoongArch::ProgramBuilder;
    friend LoongArch::RookieAllocator;
    ptr<ir_basicblock> target;
public:
    break_or_continue(ptr<ir_basicblock> target):target(target){}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    ptr<ir::ir_basicblock> get_target();
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

class func_call : public control_ins {
    friend IrPrinter;
    friend IrBuilder;
    friend LoongArch::ProgramBuilder;
    friend LoongArch::RookieAllocator;
    string func_name;
    ptr_list<ir_value> params;
    ptr<ir_reg> ret_reg;
    vartype ret_type;
    bool is_lib = false;
    ptr<ir::ir_func> callee;
public:
    func_call(string func_name, ptr_list<ir_value> params, vartype ret_type, ptr<ir::ir_func> callee) : func_name(func_name), params(params), ret_type(ret_type), callee(callee) {}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
    ptr<ir::ir_func> get_callee() {return callee;}
};

class global_def : public ir_instr {
    friend IrPrinter;
    friend IrBuilder;
    friend LoongArch::RookieAllocator;
    friend LoongArch::Program;
private:
    string var_name;
    ptr<ir_memobj> obj;
    ptr_list<ir_value> init_val;
public:
    global_def(string name, ptr<ir_memobj> obj) : var_name(name), obj(obj) {}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    ptr<ir_memobj> get_obj();
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

class trans : public ir_instr {
    friend IrPrinter;
    friend IrBuilder;
    friend LoongArch::ProgramBuilder;
private:
    vartype target;
    ptr<ir_reg> dst;
    ptr<ir_value> src;
public:
    trans(vartype target, ptr<ir_reg> dst, ptr<ir_value> src) : target(target), dst(dst), src(src) {}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

class memset : public ir_instr {
    friend IrPrinter;
    friend IrBuilder;
    friend LoongArch::ProgramBuilder;
private:
    ptr<ir_reg> base;
    int32_t val;
    int cnt;
    bool is_volatile;
public:
    memset(ptr<ir_reg> dst, int32_t val, int cnt, bool is_volatile) : val(val), base(dst), cnt(cnt), is_volatile(is_volatile) {}
    virtual void accept(ir_visitor& visitor) override final;
    virtual void print(std::ostream & out = std::cout) override final;
    virtual std::vector<ptr<ir::ir_reg>> use_reg() override final;
    virtual std::vector<ptr<ir::ir_reg>> def_reg() override final;
    void replace_reg(std::unordered_map<ptr<ir::ir_value>, ptr<ir::ir_value>> replace_map) override;
};

} // namespace ir





#endif
#pragma once

#include <cassert>
#include <iostream>
#include <list>
#include <map>
#include <memory>
#include <set>
#include <sstream>
#include <vector>

#include "arch.hpp"
#include "code_gen.hpp"

namespace LoongArch {
class ColoringAllocator;
inline std::ostream &operator<<(std::ostream &os, const Reg &reg) {
  if(reg.is_float()) {
    os << "$f" << reg.id << " ";
  }
  else if(reg.type == FBOOL) {
    os << "$fcc" << reg.id << " ";
  }
  else {
    os << '$' << 'r' << reg.id << " ";
  }
  return os;
}

class AsmContext;

struct Inst {
  virtual ~Inst() = default;

  virtual std::vector<Reg> def_reg() { return {}; }
  virtual std::vector<Reg> use_reg() { return {}; }
  virtual std::vector<Reg *> regs() { return {}; }
  virtual bool side_effect() {
    return false;
  } 
  virtual void gen_asm(std::ostream &out) = 0;  //生成汇编
  virtual void print(std::ostream &out) { gen_asm(out); } //打印

  template <class T> T *as() {
    return dynamic_cast<T *>(this);
  }
  void update_live(std::set<Reg> &live) {
    for (Reg i : def_reg())
      if (i.is_virtual() || integer_allocable(i.id)) live.erase(i);
    for (Reg i : use_reg())
      if (i.is_virtual() || integer_allocable(i.id)) live.insert(i);
  }
  bool def(Reg reg) {
    for (Reg r : def_reg())
      if (r == reg) return true;
    return false;
  }
  bool use(Reg reg) {
    for (Reg r : use_reg())
      if (r == reg) return true;
    return false;
  }
  bool relate(Reg reg) { return def(reg) || use(reg); }
  void replace_reg(Reg before, Reg after) {
    for (Reg *i : regs())
      if ((*i).id == before.id) (*i) = after;
  }
};

//modified
struct RegRegInst : Inst {      //R-Type Instruction like add r1, r2 ——> r3
  enum Type {
    add_w,add_d, fadd_f,
    sub_w,sub_d, fsub_f,
    mul_w, mul_d, fmul_f,
    div_w, fdiv_f,

    andw,orw,
    slt
    , mod_w, fmod_f                 // 我加一个：取余
  } op;
  Reg dst, lhs, rhs;
  RegRegInst(Type _op, Reg _dst, Reg _lhs, Reg _rhs)
      :  dst(_dst), lhs(_lhs), rhs(_rhs), op(_op) 
      {
      }

  virtual std::vector<Reg> def_reg() override { return {dst}; }
  virtual std::vector<Reg> use_reg() override { return {lhs, rhs}; }
  virtual std::vector<Reg *> regs() override { return {&dst, &lhs, &rhs}; }
  virtual void gen_asm(std::ostream &out) override {
    static const std::map<Type, std::string> asm_name
    {
        //Integer
        {add_w, "add.w"}, {add_d, "add.d"}, {fadd_f, "fadd.s"}, {sub_w, "sub.w"}, {fsub_f, "fsub.s"}, {mul_w, "mul.w"}, {fmul_f, "fmul.s"},  {div_w, "div.w"},  {fdiv_f, "fdiv.s"},{andw, "and"}, {orw, "or"},
        {slt, "slt"}, {mul_d, "mul.d"}
        ,{mod_w, "mod.w"}   // 我加一个：取余
    };
    out << asm_name.find(op)->second << ' ' << dst << ", " << lhs << ", " << rhs<< '\n';
  }
};

struct RegImmInst : Inst {
  enum Type { 
    addi_d , addi_w , slli_w, slli_d, srli, srai, andi, ori, slti
    , xori
    , sltui
  } op;
  Reg dst, lhs;
  int32_t rhs;
  RegImmInst(Type _op, Reg _dst, Reg _lhs, int32_t _rhs)
      : op(_op), dst(_dst), lhs(_lhs), rhs(_rhs) {
  }

  virtual std::vector<Reg> def_reg() override { return {dst}; }
  virtual std::vector<Reg> use_reg() override { return {lhs}; }
  virtual std::vector<Reg *> regs() override { return {&dst, &lhs}; }
  virtual void gen_asm(std::ostream &out) override {
    static const std::map<Type, std::string> asm_name 
    {
        {addi_d, "addi.d"},{addi_w, "addi.w"}, {andi, "andi"}, {ori, "ori"},
        {slti, "slti"}, {slli_w, "slli.w"}, {slli_d, "slli.d"}
        , {xori, "xori"}, {sltui, "sltui"}
    };
      out << asm_name.find(op)->second << ' ' << dst << ", " << lhs << ", " << rhs<< '\n';
      
  }
};

struct LoadImm : Inst { //用于将立即数加载到寄存器的汇编代码。
  Reg dst;
  int32_t value;
  LoadImm(Reg _dst, int32_t _value) : dst(_dst), value(_value) {}

  virtual std::vector<Reg> def_reg() override { return {dst}; }
  virtual std::vector<Reg *> regs() override { return {&dst}; }
  virtual void gen_asm(std::ostream &out) override {
    // out << "ori " << dst << ", " << "$r0" << ", " << value << '\n';        // ori无法加载(unsigned)-1这类在无符号上过大的数
    out << "addi.w " << dst << ", " << "$r0" << ", " << value << '\n';
  }
};

struct LoadFloat: Inst {
  Reg dst;
  int value_at;
  LoadFloat(Reg _dst, int _value) : dst(_dst), value_at(_value) {}

  virtual std::vector<Reg> def_reg() override { return {dst}; }
  virtual std::vector<Reg *> regs() override { return {&dst}; }
  virtual void gen_asm(std::ostream &out) override {
    out << "la.local " << dst << ", .LC" << value_at << '\n';
  }
};

struct Jump : Inst {  //用于生成无条件跳转指令的汇编代码。
  LoongArch::Block *target;
  Jump(Block *_target) : target(_target) { target->label_used = true; }

  virtual bool side_effect() override { return true; }
  virtual void gen_asm(std::ostream &out) override {
    out << "b " << target->name << '\n';
  }
};

struct Br : Inst {
  enum Type {
    beqz, bnez, bceqz, bcnez
  };
  Type op;
  LoongArch::Reg cond;
  LoongArch::Block *target;
  Br(Type _op, Reg _cond, Block *_target) : op(_op), cond(_cond), target(_target) { target->label_used = true; }

  virtual bool side_effect() override { return true; }
  virtual void gen_asm(std::ostream &out) override {
    static const std::map<Type, std::string> asm_name {
      {beqz, "beqz"}, {bnez, "bnez"}, {bceqz, "bceqz"}, {bcnez, "bcnez"}
    };
    auto what = asm_name.find(op)->second;
    out << asm_name.find(op)->second << " " << cond << ", " << target->name << '\n';
  }
};

struct Bl : Inst {
  string name;
  Bl(string name) : name(name) {}

  virtual bool side_effect() override { return true; }
  virtual void gen_asm(std::ostream &out) override {
    out << "bl " << name << '\n';
  }
};

struct jr : Inst { //用于生成函数返回指令的汇编代码。
  bool has_return_value;
  jr(bool _has_return_value) : has_return_value(_has_return_value) {}

  virtual std::vector<Reg> use_reg() override {
    if (has_return_value)
      return {Reg{ra}};
    else
      return {};
  }
  virtual bool side_effect() override { return true; }
  virtual void gen_asm(std::ostream &out) override {
    // ctx->epilogue(out);
    out << "jr\t" << '$' << "ra" << '\n'; 
  }
  virtual void print(std::ostream &out) override { out << "jr\t" << '$' << "ra"; out << "ret\n"; }
};


struct st : Inst {
  enum Type {
    st_d,
    st_w,
    fst_f,
    fst_d
  } op;
  Reg src, base;
  int32_t offset;
  st(Reg _src, Reg _base, int32_t _offset, Type _op = st_d)
      : op(_op), src(_src), base(_base), offset(_offset) {
    // assert(is_imm12(offset));
  }

  virtual std::vector<Reg> use_reg() override { return {src, base}; }
  virtual std::vector<Reg *> regs() override { return {&src, &base}; }
  virtual bool side_effect() override { return true; }
  virtual void gen_asm(std::ostream &out) override {
    static const std::map<Type, std::string> asm_name {
        {st_d, "st.d"}, {st_w, "st.w"}, {fst_f, "fst.s"}, {fst_d, "fst.w"}
    };
      out << asm_name.find(op)->second << ' ' << src << ", " << base <<  "," << offset <<"\n";
  }
};

struct ld : Inst {
  enum Type {
    ld_d,
    ld_w,
    fld_f,
    fld_d
  } op;
  Reg src, base;
  int32_t offset;
  ld(Reg _src, Reg _base, int32_t _offset, Type _op = ld_d)
      : op(_op), src(_src), base(_base), offset(_offset) {
    // assert(is_imm12(offset));
  }

  virtual std::vector<Reg> use_reg() override { return {src, base}; }
  virtual std::vector<Reg *> regs() override { return {&src, &base}; }
  virtual bool side_effect() override { return true; }
  virtual void gen_asm(std::ostream &out) override {
    static const std::map<Type, std::string> asm_name {
        {ld_d, "ld.d"}, {ld_w, "ld.w"}, {fld_f, "fld.s"}, {fld_d, "fld.s"}
    };
      out << asm_name.find(op)->second << ' ' << src << ", "  << base << "," << this->offset << "\n";
  }
};

struct ldptr : Inst {
  enum Type {
    ld_d,
    ld_w,
    fld_f,
    fld_d
  } op;
  Reg src, base;
  int32_t offset;
  ldptr(Reg _src, Reg _base, int32_t _offset, Type _op = ld_d)
      : op(_op), src(_src), base(_base), offset(_offset) {
    // assert(is_imm12(offset));
  }

  virtual std::vector<Reg> use_reg() override { return {src, base}; }
  virtual std::vector<Reg *> regs() override { return {&src, &base}; }
  virtual bool side_effect() override { return true; }
  virtual void gen_asm(std::ostream &out) override {
    static const std::map<Type, std::string> asm_name {
        {ld_d, "ldptr.d"}, {ld_w, "ldptr.w"}, {fld_f, "fld.s"}, {fld_d, "fld.s"}
    };
      out << asm_name.find(op)->second << ' ' << src << ", "  << base << "," << this->offset << "\n";
  }
};

struct stptr : Inst {
  enum Type {
    st_d,
    st_w,
    fst_f,
    fst_d
  } op;
  Reg src, base;
  int32_t offset;
  stptr(Reg _src, Reg _base, int32_t _offset, Type _op = st_d)
      : op(_op), src(_src), base(_base), offset(_offset) {
    // assert(is_imm12(offset));
  }

  virtual std::vector<Reg> use_reg() override { return {src, base}; }
  virtual std::vector<Reg *> regs() override { return {&src, &base}; }
  virtual bool side_effect() override { return true; }
  virtual void gen_asm(std::ostream &out) override {
    static const std::map<Type, std::string> asm_name {
        {st_d, "stptr.d"}, {st_w, "stptr.w"}, {fst_f, "fst.s"}, {fst_d, "fst.s"}
    };
      out << asm_name.find(op)->second << ' ' << src << ", "  << base << "," << this->offset << "\n";
  }
};

struct la : Inst {
  enum Type {
    local,
  } op;
  Reg dst;
  ptr<ir::ir_reg> src;
  la(ptr<ir::ir_reg> src, Reg dst, Type op = local) : src(src), dst(dst), op(op) {}
  virtual std::vector<Reg> use_reg() override { return {dst}; }
  virtual std::vector<Reg *> regs() override { return {&dst}; }
  virtual bool side_effect() override { return true; }
  virtual void gen_asm(std::ostream &out) override {
    static const std::map<Type, std::string> asm_name {
        {local, "la.local"},
    };
      out << asm_name.find(op)->second << ' ' << dst << ", "  << src->get_name() << "\n";
  }
};

struct FCMP : Inst {
    enum Type {
    eq, ne,
    gt, ge,
    lt, le
  } op;
  Reg dst, src1, src2;
  FCMP(Reg dst, Reg src1, Reg src2, Type op) : dst(dst), src1(src1), src2(src2), op(op) {}
  virtual std::vector<Reg> use_reg() override { return {src1, src2}; }
  virtual std::vector<Reg *> regs() override { return {&src1, &src2}; }
  virtual bool side_effect() override { return true; }
  virtual void gen_asm(std::ostream &out) override {
    static const std::map<Type, std::string> asm_name {
        {eq, "ceq"}, {ne, "cune"}, {gt, "sgt"}, {ge, "sge"}, {lt, "slt"}, {le, "sle"}
    };
      out << "fcmp." << asm_name.find(op)->second << ".s" << ' ' << dst << ", " << src1 << ", "  << src2 << "\n";
  }
};

struct trans : Inst {
    enum Type {
    fti, itf
  } op;
  Reg dst, src;
  trans(Reg dst, Reg src, Type op) : dst(dst), src(src), op(op) {}
  virtual std::vector<Reg> use_reg() override { return {src}; }
  virtual std::vector<Reg *> regs() override { return {&src}; }
  virtual bool side_effect() override { return true; }
  virtual void gen_asm(std::ostream &out) override {
    static const std::map<Type, std::string> asm_name {
        {fti, "ftintrz.w.s"}, {itf, "ffint.s.w"}
    };
      out << asm_name.find(op)->second << ' ' << dst << ", " << src << "\n";
  }
};

struct mov : Inst {
    enum Type {
    ftg, gtf, ftf_f
  } op;
  Reg dst, src;
  mov(Reg dst, Reg src, Type op) : dst(dst), src(src), op(op) {}
  virtual std::vector<Reg> use_reg() override { return {src}; }
  virtual std::vector<Reg *> regs() override { return {&src}; }
  virtual bool side_effect() override { return true; }
  virtual void gen_asm(std::ostream &out) override {
    static const std::map<Type, std::string> asm_name {
        {ftg, "movfr2gr.s"}, {gtf, "movgr2fr.w"}, {ftf_f, "fmov.s"}
    };
      out << asm_name.find(op)->second << ' ' << dst << ", " << src << "\n";
  }
};

struct funary : Inst {
    enum Type {
    neg_f
  } op;
  Reg dst, src;
  funary(Reg dst, Reg src, Type op) : dst(dst), src(src), op(op) {}
  virtual std::vector<Reg> use_reg() override { return {src}; }
  virtual std::vector<Reg *> regs() override { return {&src}; }
  virtual bool side_effect() override { return true; }
  virtual void gen_asm(std::ostream &out) override {
    static const std::map<Type, std::string> asm_name {
        {neg_f, "fneg.s"}
    };
      out << asm_name.find(op)->second << ' ' << dst << ", " << src << "\n";
  }
};


}  // namespace Archriscv

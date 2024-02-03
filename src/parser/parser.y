%{
    #include "SyntaxTree.hpp"
    #include "SyntaxAnalyse.hpp"
    #include <iostream>

    int yylex();
    int yyparse();
    int yyrestart();
    
    extern FILE* yyin;
    extern char* yytext;
    extern int line_number;
    extern int column_end_number;
    extern int column_start_number;

    void yyerror(const char *s) {
        std::cerr << s << std::endl;
        std::cerr << "Error at line " << line_number << ": " << column_end_number << std::endl;
        std::cerr << "Error: " << yytext << std::endl;
        std::abort();
    }

    using namespace ast;
%}

%union {
    char* current_symbol; //we can't use string or any other object with construct function in union. 
    int symbol_size;
    struct ast::compunit_syntax *compunit ;
    struct ast::func_def_syntax *func_def;
    struct ast::expr_syntax *expr;
    struct ast::binop_expr_syntax *binop_expr;
    struct ast::unaryop_expr_syntax *unaryop_expr;
    struct ast::lval_syntax *lval;  
    struct ast::literal_syntax *literal;
    struct ast::stmt_syntax *stmt;
    struct ast::assign_stmt_syntax *assign;
    struct ast::block_syntax *block;
    struct ast::if_stmt_syntax *if_stmt;
    struct ast::return_stmt_syntax *return_stmt;
    struct ast::var_def_stmt_syntax *var_def_stmt;
    struct ast::var_decl_stmt_syntax *var_decl_stmt;
    struct ast::func_f_param_syntax *func_f_param;
    struct ast::var_dimension_syntax *var_dimension;
    enum vartype var_type;
}

%token <current_symbol> INT FLOAT VOID IF ELSE WHILE BREAK CONTINUE RETURN Ident CONST
%token <current_symbol> ADD SUB MUL DIV MOD
%token <current_symbol> LPAREN RPAREN LBRACKET RBRACKET LBRACE RBRACE
%token <current_symbol> IntConst FloatConst
%token <current_symbol> LESS GREATER EQUAL NOT
%token <current_symbol> LESS_EQUAL GREATER_EQUAL NOT_EQUAL AND OR
%token <current_symbol> ASSIGN COMMA SEMICOLON
%token <current_symbol> ERROR

%type <compunit> CompUnit
%type <func_def> FuncDef
// %type <var_type> FuncType
%type <var_type> BType
%type <func_f_param> FuncFParam
// %type <var_def_stmt> FuncFParam
%type <block> Block
%type <block> BlockItems
%type <stmt> Stmt
%type <expr> Exp
%type <stmt> Decl
%type <stmt> VarDecl 
%type <stmt> ConstDecl
%type <var_decl_stmt> VarDefGroup
%type <var_decl_stmt> ConstDefGroup
%type <func_def> FuncFParamsGroup
%type <var_def_stmt> VarDef
%type <var_def_stmt> ConstDef
%type <expr> InitVal
%type <expr> AddExp
%type <expr> PrimaryExp
%type <expr> MulExp
%type <expr> UnaryExp
%type <expr> Number
%type <lval> Lval
%type <expr> Cond
%type <expr> LOrExp
%type <expr> LAndExp
%type <expr> EqExp
%type <expr> RelExp
%type <current_symbol> UnaryOp
%type <var_dimension> ExpGroup
%type <expr> ConstExp
%type <var_dimension> ConstExpGroup




%start CompUnit


%%

    CompUnit
    :CompUnit FuncDef { SyntaxAnalyseCompUnit($$,$1,$2);}
    |CompUnit Decl {SyntaxAnalyseCompUnit($$, $1, $2);}
    |FuncDef { SyntaxAnalyseCompUnit($$,nullptr,$1); }
    |Decl {SyntaxAnalyseCompUnit($$, nullptr, $1);}

    FuncDef: BType Ident LPAREN RPAREN Block { SyntaxAnalyseFuncDef($$,$1,$2,$5);}
    | VOID Ident LPAREN RPAREN Block {SyntaxAnalyseFuncDef($$, vartype::VOID, $2, $5);}
    | BType Ident LPAREN FuncFParam FuncFParamsGroup RPAREN Block {
        SyntaxAnalyseFuncDef($$, $1, $2, $7);
        SyntaxAnalyseFuncFDecl($$, $4, $5);
    }
    | VOID Ident LPAREN FuncFParam FuncFParamsGroup RPAREN Block {
        SyntaxAnalyseFuncDef($$, vartype::VOID, $2, $7);
        SyntaxAnalyseFuncFDecl($$, $4, $5);
    }

    FuncFParam: BType Ident {
        SyntaxAnalyseFuncFDef($$, $1, $2, nullptr);
    }
    | BType Ident LBRACKET RBRACKET ExpGroup {
        SyntaxAnalyseFuncFDef($$, $1, $2, $5);
    }             // !!! Sysy上写明数组形参的第一维长度省去，即第一个[]应省略

    ExpGroup: LBRACKET Exp RBRACKET ExpGroup {
        SyntaxAnalyseVarDimension($$, $2, $4);
    }
    | %empty {
        $$ = nullptr;
    }

    FuncFParamsGroup: COMMA FuncFParam FuncFParamsGroup {
        SyntaxAnalyseFuncFDeclGroup($$, $2, $3);
    }
    | %empty {
        $$ = nullptr;
    }

    // FuncType: VOID { SynataxAnalyseFuncType($$,$1);}
    // |INT { SynataxAnalyseFuncType($$,$1);}
    // |FLOAT { SynataxAnalyseFuncType($$,$1);}
    // FuncType: BType {}
    // | VOID {}

    Block: LBRACE BlockItems RBRACE { SynataxAnalyseBlock($$,$2);}

    BlockItems: BlockItems Stmt { SynataxAnalyseBlockItems($$,$1,$2);}
    | %empty { SynataxAnalyseBlockItems($$,nullptr,nullptr);}
 /*a-难度---------------*/
    | BlockItems Decl{
        SynataxAnalyseBlockItems($$,$1,$2);
    }
 /*--------------------*/

    Stmt: RETURN Exp SEMICOLON { SynataxAnalyseStmtReturn($$,$2);}
 /*a-难度---------------*/
    | Block{
        SynataxAnalyseStmtBlock($$,$1);
    }
    |RETURN SEMICOLON{
        SynataxAnalyseStmtReturn($$,nullptr);
    }
 /*--------------------*/
 /*a难度---------------*/
    | Lval ASSIGN Exp SEMICOLON{
        SynataxAnalyseStmtAssign($$,$1,$3);
    }
 /*--------------------*/
 /*a+难度---------------*/
    | IF LPAREN Cond RPAREN Stmt {
        SynataxAnalyseStmtIf($$,$3,$5,nullptr);
    }
    | IF LPAREN Cond RPAREN Stmt ELSE Stmt{
        SynataxAnalyseStmtIf($$,$3,$5,$7);
    }
    | Exp SEMICOLON {}
    | SEMICOLON{}
    | WHILE LPAREN Cond RPAREN Stmt {}
    | BREAK SEMICOLON {}
    | CONTINUE SEMICOLON {}
 /*--------------------*/

//     PrimaryExp: IntConst { SynataxAnalysePrimaryExpIntConst($$,$1); }
//     | FloatConst { SynataxAnalysePrimaryExpFloatConst($$,$1); }
//  /*a-难度---------------*/
//     | LPAREN Exp RPAREN{
//         $$=$2;
//     }
//     | Ident{
//         SynataxAnalysePrimaryExpVar($$,$1);
//     }
    PrimaryExp: Number {
        $$ = $1;
    }
    | Lval {}
    // | IntConst { SynataxAnalysePrimaryExpIntConst($$,$1); }
    // | FloatConst { SynataxAnalysePrimaryExpFloatConst($$,$1); }
    | LPAREN Exp RPAREN{
        $$=$2;
    }

    Number: IntConst {SynataxAnalysePrimaryExpIntConst($$,$1);}
    | FloatConst {SynataxAnalysePrimaryExpFloatConst($$,$1);}
 /*--------------------*/

 /*a-难度---------------*/
    Decl: VarDecl{
        $$=$1;
    }
    | ConstDecl {
        $$ = $1;
    }

    VarDecl: BType VarDef VarDefGroup SEMICOLON{
        SynataxAnalyseVarDecl($$, $1, $2, $3);
    }

    VarDefGroup:  COMMA VarDef VarDefGroup{
        SynataxAnalyseVarDefGroup($$,$2,$3);
    }
    | %empty {
        $$=nullptr;
    }

    VarDef: Ident  {
        SynataxAnalyseVarDef($$,$1, nullptr,nullptr);
    }
    | Ident ASSIGN InitVal{
        SynataxAnalyseVarDef($$,$1, nullptr,$3);
    }
    | Ident ConstExpGroup {
        SynataxAnalyseVarDef($$,$1, $2, nullptr);
    }
    | Ident ConstExpGroup ASSIGN InitVal {
        SynataxAnalyseVarDef($$,$1, $2, $4);
    }

    InitVal: Exp{
        $$=$1;
    }
    | LBRACE InitVal InitValGroup RBRACE {}
    | LBRACE RBRACE {}

    InitValGroup: COMMA InitVal InitValGroup {}
    | %empty {}

    ConstDecl: CONST BType ConstDef ConstDefGroup SEMICOLON {
        SynataxAnalyseVarDecl($$, $2, $3, $4);
    }

    ConstDefGroup: COMMA ConstDef ConstDefGroup {
        SynataxAnalyseVarDefGroup($$, $2, $3);
    }
    | %empty {
        $$ = nullptr;
    }

    ConstDef: Ident ConstExpGroup ASSIGN ConstInitVal {}

    ConstInitVal: ConstExp {}
    | LBRACE ConstInitVal ConstInitValGroup RBRACE {}
    | LBRACE RBRACE {}

    ConstInitValGroup: COMMA ConstInitVal ConstInitValGroup {}
    | %empty {}

    ConstExpGroup: LBRACKET ConstExp RBRACKET ConstExpGroup {
        SyntaxAnalyseVarDimension($$, $2, $4);
    }
    | %empty {
        $$ = nullptr;
    }

    ConstExp: AddExp {
        $$ = $1;
    }
    
    BType: INT {SynataxAnalyseVarType($$, $1);}
    | FLOAT {SynataxAnalyseVarType($$, $1);}

    AddExp: MulExp{
        $$=$1;
    }
    | AddExp ADD MulExp{
        SynataxAnalyseAddExp($$,$1,$2,$3);
    }
    | AddExp SUB MulExp{
        SynataxAnalyseAddExp($$,$1,$2,$3);
    }

    Exp: AddExp{
        $$=$1;
    }
 /*--------------------*/
 
 /*a难度---------------*/
    MulExp: UnaryExp{
        $$=$1;
    }
    | MulExp MUL UnaryExp {
         SynataxAnalyseMulExp($$,$1,$2,$3);
    }
    | MulExp DIV UnaryExp {
         SynataxAnalyseMulExp($$,$1,$2,$3);
    }
    | MulExp MOD UnaryExp {
        SynataxAnalyseMulExp($$, $1, $2, $3); // TODO
    }

    Lval: Ident ExpGroup{
        SynataxAnalyseLval($$,$1, $2);
    }
 /*--------------------*/
 
 /*a+难度---------------*/
   Cond: LOrExp{
    $$=$1;
   }

   LOrExp: LAndExp{
    $$=$1;
   }
   |LOrExp OR LAndExp{
    SynataxAnalyseLOrExp($$,$1,$3);
   }

    LAndExp: EqExp{
        $$=$1;
    }
    | LAndExp AND EqExp {
        SynataxAnalyseLAndExp($$,$1,$3);
    }

    EqExp: RelExp{
        $$=$1;
    }
    |EqExp EQUAL RelExp{
        SynataxAnalyseEqExp($$,$1,$2,$3);
    }
    |EqExp NOT_EQUAL RelExp{
        SynataxAnalyseEqExp($$,$1,$2,$3);
    }

    RelExp: AddExp{
        $$=$1;
    }
    | RelExp LESS AddExp {
        SynataxAnalyseRelExp($$,$1,$2,$3);
    }
    | RelExp GREATER AddExp {
        SynataxAnalyseRelExp($$,$1,$2,$3);
    }
    | RelExp LESS_EQUAL AddExp {
        SynataxAnalyseRelExp($$,$1,$2,$3);
    }
    | RelExp GREATER_EQUAL AddExp {
        SynataxAnalyseRelExp($$,$1,$2,$3);
    }

 /*--------------------*/

 /*a++难度---------------*/
    UnaryExp: PrimaryExp{
        $$=$1;
    }
    | UnaryOp UnaryExp{
        SynataxAnalyseUnaryExp($$,$1,$2);
    }
    | Ident LPAREN Exp FuncRParamsGroup RPAREN {}
    | Ident LPAREN RPAREN {}

    FuncRParamsGroup: COMMA Exp FuncRParamsGroup {}
    | %empty {}

    UnaryOp:ADD{
        $$=$1;
    }
    | SUB{
        $$=$1;
    }
    | NOT{
        $$=$1;
    }
 /*--------------------*/

%%


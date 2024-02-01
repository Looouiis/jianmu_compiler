/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "parser.y"

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

#line 96 "parser.cpp"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "parser.hpp"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_INT = 3,                        /* INT  */
  YYSYMBOL_FLOAT = 4,                      /* FLOAT  */
  YYSYMBOL_VOID = 5,                       /* VOID  */
  YYSYMBOL_IF = 6,                         /* IF  */
  YYSYMBOL_ELSE = 7,                       /* ELSE  */
  YYSYMBOL_RETURN = 8,                     /* RETURN  */
  YYSYMBOL_Ident = 9,                      /* Ident  */
  YYSYMBOL_ADD = 10,                       /* ADD  */
  YYSYMBOL_SUB = 11,                       /* SUB  */
  YYSYMBOL_MUL = 12,                       /* MUL  */
  YYSYMBOL_DIV = 13,                       /* DIV  */
  YYSYMBOL_MOD = 14,                       /* MOD  */
  YYSYMBOL_LPAREN = 15,                    /* LPAREN  */
  YYSYMBOL_RPAREN = 16,                    /* RPAREN  */
  YYSYMBOL_LBRACKET = 17,                  /* LBRACKET  */
  YYSYMBOL_RBRACKET = 18,                  /* RBRACKET  */
  YYSYMBOL_LBRACE = 19,                    /* LBRACE  */
  YYSYMBOL_RBRACE = 20,                    /* RBRACE  */
  YYSYMBOL_IntConst = 21,                  /* IntConst  */
  YYSYMBOL_FloatConst = 22,                /* FloatConst  */
  YYSYMBOL_LESS = 23,                      /* LESS  */
  YYSYMBOL_GREATER = 24,                   /* GREATER  */
  YYSYMBOL_EQUAL = 25,                     /* EQUAL  */
  YYSYMBOL_NOT = 26,                       /* NOT  */
  YYSYMBOL_LESS_EQUAL = 27,                /* LESS_EQUAL  */
  YYSYMBOL_GREATER_EQUAL = 28,             /* GREATER_EQUAL  */
  YYSYMBOL_NOT_EQUAL = 29,                 /* NOT_EQUAL  */
  YYSYMBOL_AND = 30,                       /* AND  */
  YYSYMBOL_OR = 31,                        /* OR  */
  YYSYMBOL_ASSIGN = 32,                    /* ASSIGN  */
  YYSYMBOL_COMMA = 33,                     /* COMMA  */
  YYSYMBOL_SEMICOLON = 34,                 /* SEMICOLON  */
  YYSYMBOL_ERROR = 35,                     /* ERROR  */
  YYSYMBOL_YYACCEPT = 36,                  /* $accept  */
  YYSYMBOL_CompUnit = 37,                  /* CompUnit  */
  YYSYMBOL_FuncDef = 38,                   /* FuncDef  */
  YYSYMBOL_FuncType = 39,                  /* FuncType  */
  YYSYMBOL_Block = 40,                     /* Block  */
  YYSYMBOL_BlockItems = 41,                /* BlockItems  */
  YYSYMBOL_Stmt = 42,                      /* Stmt  */
  YYSYMBOL_PrimaryExp = 43,                /* PrimaryExp  */
  YYSYMBOL_Decl = 44,                      /* Decl  */
  YYSYMBOL_VarDecl = 45,                   /* VarDecl  */
  YYSYMBOL_VarDefGroup = 46,               /* VarDefGroup  */
  YYSYMBOL_VarDef = 47,                    /* VarDef  */
  YYSYMBOL_InitVal = 48,                   /* InitVal  */
  YYSYMBOL_AddExp = 49,                    /* AddExp  */
  YYSYMBOL_Exp = 50,                       /* Exp  */
  YYSYMBOL_MulExp = 51,                    /* MulExp  */
  YYSYMBOL_Lval = 52,                      /* Lval  */
  YYSYMBOL_Cond = 53,                      /* Cond  */
  YYSYMBOL_LOrExp = 54,                    /* LOrExp  */
  YYSYMBOL_LAndExp = 55,                   /* LAndExp  */
  YYSYMBOL_EqExp = 56,                     /* EqExp  */
  YYSYMBOL_RelExp = 57,                    /* RelExp  */
  YYSYMBOL_UnaryExp = 58,                  /* UnaryExp  */
  YYSYMBOL_UnaryOp = 59                    /* UnaryOp  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_int8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  7
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   88

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  36
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  24
/* YYNRULES -- Number of rules.  */
#define YYNRULES  57
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  95

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   290


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,    88,    88,    90,    94,    97,    98,    99,   102,   105,
     107,   110,   116,   118,   121,   126,   131,   134,   140,   142,
     145,   150,   151,   154,   160,   164,   167,   171,   174,   178,
     181,   184,   188,   191,   194,   198,   204,   207,   210,   214,
     220,   224,   227,   231,   234,   238,   241,   244,   248,   251,
     254,   257,   260,   267,   270,   274,   277,   280
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "INT", "FLOAT", "VOID",
  "IF", "ELSE", "RETURN", "Ident", "ADD", "SUB", "MUL", "DIV", "MOD",
  "LPAREN", "RPAREN", "LBRACKET", "RBRACKET", "LBRACE", "RBRACE",
  "IntConst", "FloatConst", "LESS", "GREATER", "EQUAL", "NOT",
  "LESS_EQUAL", "GREATER_EQUAL", "NOT_EQUAL", "AND", "OR", "ASSIGN",
  "COMMA", "SEMICOLON", "ERROR", "$accept", "CompUnit", "FuncDef",
  "FuncType", "Block", "BlockItems", "Stmt", "PrimaryExp", "Decl",
  "VarDecl", "VarDefGroup", "VarDef", "InitVal", "AddExp", "Exp", "MulExp",
  "Lval", "Cond", "LOrExp", "LAndExp", "EqExp", "RelExp", "UnaryExp",
  "UnaryOp", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-66)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-1)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int8 yypact[] =
{
      64,   -66,   -66,   -66,    44,   -66,     3,   -66,   -66,    26,
      38,    42,   -66,   -66,     5,    56,    56,    57,    -5,   -66,
     -66,   -66,   -66,   -66,   -66,    41,    43,    45,    45,    24,
     -66,   -66,   -66,    24,   -66,   -66,   -66,   -66,   -66,    12,
      40,    18,   -66,    24,    24,    24,    56,    46,    47,    12,
      60,    48,    52,    37,    36,    61,    24,    24,   -66,    24,
      24,   -66,    49,   -66,   -66,    45,   -66,   -66,    34,    24,
      24,    24,    24,    24,    24,    24,    24,   -66,    18,    18,
     -66,   -66,   -66,   -66,    77,    52,    37,    36,    36,    12,
      12,    12,    12,    34,   -66
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,     6,     7,     5,     0,     3,     0,     1,     2,     0,
       0,     0,    10,     4,     0,     0,     0,     0,     0,    39,
       8,    13,     9,    11,    24,     0,    29,    28,    28,     0,
      20,    55,    56,     0,    18,    21,    57,    14,    53,    35,
       0,    32,    36,     0,     0,     0,     0,     0,     0,    48,
       0,    40,    41,    43,    45,     0,     0,     0,    12,     0,
       0,    54,     0,    30,    31,    28,    25,    26,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    19,    33,    34,
      37,    38,    15,    27,    16,    42,    44,    46,    47,    49,
      50,    51,    52,     0,    17
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int8 yypgoto[] =
{
     -66,   -66,    81,   -66,    75,   -66,   -65,   -66,   -66,   -66,
     -27,   -14,   -66,   -18,   -26,    14,   -66,   -66,   -66,    19,
      17,   -20,   -23,   -66
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
       0,     4,     5,     6,    21,    14,    22,    38,    23,    24,
      47,    27,    63,    49,    40,    41,    25,    50,    51,    52,
      53,    54,    42,    43
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int8 yytable[] =
{
      39,    48,    28,    84,    30,    31,    32,    55,    15,    16,
      33,    17,     9,    18,    19,    39,    34,    35,    62,    64,
      61,    36,    56,    57,    12,    20,    39,    39,    94,    37,
      59,    60,    65,    30,    31,    32,    80,    81,    83,    33,
      17,    10,    18,    19,     7,    34,    35,     1,     2,     3,
      36,    87,    88,    12,    11,    89,    90,    91,    92,    73,
      74,    12,    71,    75,    76,    26,    72,     1,     2,     3,
      78,    79,    29,    44,    58,    45,    68,    77,    46,    69,
      66,    67,    70,    82,    93,     8,    13,    86,    85
};

static const yytype_int8 yycheck[] =
{
      18,    28,    16,    68,     9,    10,    11,    33,     3,     4,
      15,     6,     9,     8,     9,    33,    21,    22,    44,    45,
      43,    26,    10,    11,    19,    20,    44,    45,    93,    34,
      12,    13,    46,     9,    10,    11,    59,    60,    65,    15,
       6,    15,     8,     9,     0,    21,    22,     3,     4,     5,
      26,    71,    72,    19,    16,    73,    74,    75,    76,    23,
      24,    19,    25,    27,    28,     9,    29,     3,     4,     5,
      56,    57,    15,    32,    34,    32,    16,    16,    33,    31,
      34,    34,    30,    34,     7,     4,    11,    70,    69
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     3,     4,     5,    37,    38,    39,     0,    38,     9,
      15,    16,    19,    40,    41,     3,     4,     6,     8,     9,
      20,    40,    42,    44,    45,    52,     9,    47,    47,    15,
       9,    10,    11,    15,    21,    22,    26,    34,    43,    49,
      50,    51,    58,    59,    32,    32,    33,    46,    46,    49,
      53,    54,    55,    56,    57,    50,    10,    11,    34,    12,
      13,    58,    50,    48,    50,    47,    34,    34,    16,    31,
      30,    25,    29,    23,    24,    27,    28,    16,    51,    51,
      58,    58,    34,    46,    42,    55,    56,    57,    57,    49,
      49,    49,    49,     7,    42
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    36,    37,    37,    38,    39,    39,    39,    40,    41,
      41,    41,    42,    42,    42,    42,    42,    42,    43,    43,
      43,    43,    43,    43,    44,    45,    45,    46,    46,    47,
      47,    48,    49,    49,    49,    50,    51,    51,    51,    52,
      53,    54,    54,    55,    55,    56,    56,    56,    57,    57,
      57,    57,    57,    58,    58,    59,    59,    59
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     2,     1,     5,     1,     1,     1,     3,     2,
       0,     2,     3,     1,     2,     4,     5,     7,     1,     3,
       1,     1,     3,     1,     1,     4,     4,     3,     0,     1,
       3,     1,     1,     3,     3,     1,     1,     3,     3,     1,
       1,     1,     3,     1,     3,     1,     3,     3,     1,     3,
       3,     3,     3,     1,     2,     1,     1,     1
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* CompUnit: CompUnit FuncDef  */
#line 88 "parser.y"
                      { SyntaxAnalyseCompUnit((yyval.compunit),(yyvsp[-1].compunit),(yyvsp[0].func_def));
    }
#line 1203 "parser.cpp"
    break;

  case 3: /* CompUnit: FuncDef  */
#line 90 "parser.y"
             { SyntaxAnalyseCompUnit((yyval.compunit),nullptr,(yyvsp[0].func_def)); 
    }
#line 1210 "parser.cpp"
    break;

  case 4: /* FuncDef: FuncType Ident LPAREN RPAREN Block  */
#line 94 "parser.y"
                                        { SyntaxAnalyseFuncDef((yyval.func_def),(yyvsp[-4].var_type),(yyvsp[-3].current_symbol),(yyvsp[0].block));}
#line 1216 "parser.cpp"
    break;

  case 5: /* FuncType: VOID  */
#line 97 "parser.y"
          { SynataxAnalyseFuncType((yyval.var_type),(yyvsp[0].current_symbol));}
#line 1222 "parser.cpp"
    break;

  case 6: /* FuncType: INT  */
#line 98 "parser.y"
         { SynataxAnalyseFuncType((yyval.var_type),(yyvsp[0].current_symbol));}
#line 1228 "parser.cpp"
    break;

  case 7: /* FuncType: FLOAT  */
#line 99 "parser.y"
           { SynataxAnalyseFuncType((yyval.var_type),(yyvsp[0].current_symbol));}
#line 1234 "parser.cpp"
    break;

  case 8: /* Block: LBRACE BlockItems RBRACE  */
#line 102 "parser.y"
                               { SynataxAnalyseBlock((yyval.block),(yyvsp[-1].block));}
#line 1240 "parser.cpp"
    break;

  case 9: /* BlockItems: BlockItems Stmt  */
#line 105 "parser.y"
                      { SynataxAnalyseBlockItems((yyval.block),(yyvsp[-1].block),(yyvsp[0].stmt));
    }
#line 1247 "parser.cpp"
    break;

  case 10: /* BlockItems: %empty  */
#line 107 "parser.y"
      { SynataxAnalyseBlockItems((yyval.block),nullptr,nullptr);
    }
#line 1254 "parser.cpp"
    break;

  case 11: /* BlockItems: BlockItems Decl  */
#line 110 "parser.y"
                     {
        SynataxAnalyseBlockItems((yyval.block),(yyvsp[-1].block),(yyvsp[0].stmt));
    }
#line 1262 "parser.cpp"
    break;

  case 12: /* Stmt: RETURN Exp SEMICOLON  */
#line 116 "parser.y"
                           { SynataxAnalyseStmtReturn((yyval.stmt),(yyvsp[-1].expr));}
#line 1268 "parser.cpp"
    break;

  case 13: /* Stmt: Block  */
#line 118 "parser.y"
           {
        SynataxAnalyseStmtBlock((yyval.stmt),(yyvsp[0].block));
    }
#line 1276 "parser.cpp"
    break;

  case 14: /* Stmt: RETURN SEMICOLON  */
#line 121 "parser.y"
                     {
        SynataxAnalyseStmtReturn((yyval.stmt),nullptr);
    }
#line 1284 "parser.cpp"
    break;

  case 15: /* Stmt: Lval ASSIGN Exp SEMICOLON  */
#line 126 "parser.y"
                               {
        SynataxAnalyseStmtAssign((yyval.stmt),(yyvsp[-3].lval),(yyvsp[-1].expr));
    }
#line 1292 "parser.cpp"
    break;

  case 16: /* Stmt: IF LPAREN Cond RPAREN Stmt  */
#line 131 "parser.y"
                                 {
        SynataxAnalyseStmtIf((yyval.stmt),(yyvsp[-2].expr),(yyvsp[0].stmt),nullptr);
    }
#line 1300 "parser.cpp"
    break;

  case 17: /* Stmt: IF LPAREN Cond RPAREN Stmt ELSE Stmt  */
#line 134 "parser.y"
                                          {
        SynataxAnalyseStmtIf((yyval.stmt),(yyvsp[-4].expr),(yyvsp[-2].stmt),(yyvsp[0].stmt));
    }
#line 1308 "parser.cpp"
    break;

  case 18: /* PrimaryExp: IntConst  */
#line 140 "parser.y"
               { SynataxAnalysePrimaryExpIntConst((yyval.expr),(yyvsp[0].current_symbol)); }
#line 1314 "parser.cpp"
    break;

  case 19: /* PrimaryExp: LPAREN Exp RPAREN  */
#line 142 "parser.y"
                       {
        (yyval.expr)=(yyvsp[-1].expr);
    }
#line 1322 "parser.cpp"
    break;

  case 20: /* PrimaryExp: Ident  */
#line 145 "parser.y"
           {
        SynataxAnalysePrimaryExpVar((yyval.expr),(yyvsp[0].current_symbol));
    }
#line 1330 "parser.cpp"
    break;

  case 21: /* PrimaryExp: FloatConst  */
#line 150 "parser.y"
                 { SynataxAnalysePrimaryExpFloatConst((yyval.expr),(yyvsp[0].current_symbol)); }
#line 1336 "parser.cpp"
    break;

  case 22: /* PrimaryExp: LPAREN Exp RPAREN  */
#line 151 "parser.y"
                       {
        (yyval.expr)=(yyvsp[-1].expr);
    }
#line 1344 "parser.cpp"
    break;

  case 23: /* PrimaryExp: Ident  */
#line 154 "parser.y"
           {
        SynataxAnalysePrimaryExpVar((yyval.expr),(yyvsp[0].current_symbol));
    }
#line 1352 "parser.cpp"
    break;

  case 24: /* Decl: VarDecl  */
#line 160 "parser.y"
                 {
        (yyval.stmt)=(yyvsp[0].stmt);
    }
#line 1360 "parser.cpp"
    break;

  case 25: /* VarDecl: INT VarDef VarDefGroup SEMICOLON  */
#line 164 "parser.y"
                                             {
        SynataxAnalyseVarDecl((yyval.stmt),(yyvsp[-2].var_def_stmt),(yyvsp[-1].var_decl_stmt));
    }
#line 1368 "parser.cpp"
    break;

  case 26: /* VarDecl: FLOAT VarDef VarDefGroup SEMICOLON  */
#line 167 "parser.y"
                                         {
        SynataxAnalyseVarDecl((yyval.stmt), (yyvsp[-2].var_def_stmt), (yyvsp[-1].var_decl_stmt));
    }
#line 1376 "parser.cpp"
    break;

  case 27: /* VarDefGroup: COMMA VarDef VarDefGroup  */
#line 171 "parser.y"
                                          {
        SynataxAnalyseVarDefGroup((yyval.var_decl_stmt),(yyvsp[-1].var_def_stmt),(yyvsp[0].var_decl_stmt));
    }
#line 1384 "parser.cpp"
    break;

  case 28: /* VarDefGroup: %empty  */
#line 174 "parser.y"
     {
        (yyval.var_decl_stmt)=nullptr;
    }
#line 1392 "parser.cpp"
    break;

  case 29: /* VarDef: Ident  */
#line 178 "parser.y"
                  {
         SynataxAnalyseVarDef((yyval.var_def_stmt),(yyvsp[0].current_symbol),nullptr);
    }
#line 1400 "parser.cpp"
    break;

  case 30: /* VarDef: Ident ASSIGN InitVal  */
#line 181 "parser.y"
                          {
        SynataxAnalyseVarDef((yyval.var_def_stmt),(yyvsp[-2].current_symbol),(yyvsp[0].expr));
    }
#line 1408 "parser.cpp"
    break;

  case 31: /* InitVal: Exp  */
#line 184 "parser.y"
                {
        (yyval.expr)=(yyvsp[0].expr);
    }
#line 1416 "parser.cpp"
    break;

  case 32: /* AddExp: MulExp  */
#line 188 "parser.y"
                  {
        (yyval.expr)=(yyvsp[0].expr);
    }
#line 1424 "parser.cpp"
    break;

  case 33: /* AddExp: AddExp ADD MulExp  */
#line 191 "parser.y"
                       {
        SynataxAnalyseAddExp((yyval.expr),(yyvsp[-2].expr),(yyvsp[-1].current_symbol),(yyvsp[0].expr));
    }
#line 1432 "parser.cpp"
    break;

  case 34: /* AddExp: AddExp SUB MulExp  */
#line 194 "parser.y"
                       {
        SynataxAnalyseAddExp((yyval.expr),(yyvsp[-2].expr),(yyvsp[-1].current_symbol),(yyvsp[0].expr));
    }
#line 1440 "parser.cpp"
    break;

  case 35: /* Exp: AddExp  */
#line 198 "parser.y"
               {
        (yyval.expr)=(yyvsp[0].expr);
    }
#line 1448 "parser.cpp"
    break;

  case 36: /* MulExp: UnaryExp  */
#line 204 "parser.y"
                    {
        (yyval.expr)=(yyvsp[0].expr);
    }
#line 1456 "parser.cpp"
    break;

  case 37: /* MulExp: MulExp MUL UnaryExp  */
#line 207 "parser.y"
                          {
         SynataxAnalyseMulExp((yyval.expr),(yyvsp[-2].expr),(yyvsp[-1].current_symbol),(yyvsp[0].expr));
    }
#line 1464 "parser.cpp"
    break;

  case 38: /* MulExp: MulExp DIV UnaryExp  */
#line 210 "parser.y"
                          {
         SynataxAnalyseMulExp((yyval.expr),(yyvsp[-2].expr),(yyvsp[-1].current_symbol),(yyvsp[0].expr));
    }
#line 1472 "parser.cpp"
    break;

  case 39: /* Lval: Ident  */
#line 214 "parser.y"
               {
        SynataxAnalyseLval((yyval.lval),(yyvsp[0].current_symbol));
    }
#line 1480 "parser.cpp"
    break;

  case 40: /* Cond: LOrExp  */
#line 220 "parser.y"
               {
    (yyval.expr)=(yyvsp[0].expr);
   }
#line 1488 "parser.cpp"
    break;

  case 41: /* LOrExp: LAndExp  */
#line 224 "parser.y"
                  {
    (yyval.expr)=(yyvsp[0].expr);
   }
#line 1496 "parser.cpp"
    break;

  case 42: /* LOrExp: LOrExp OR LAndExp  */
#line 227 "parser.y"
                     {
    SynataxAnalyseLOrExp((yyval.expr),(yyvsp[-2].expr),(yyvsp[0].expr));
   }
#line 1504 "parser.cpp"
    break;

  case 43: /* LAndExp: EqExp  */
#line 231 "parser.y"
                  {
        (yyval.expr)=(yyvsp[0].expr);
    }
#line 1512 "parser.cpp"
    break;

  case 44: /* LAndExp: LAndExp AND EqExp  */
#line 234 "parser.y"
                        {
        SynataxAnalyseLAndExp((yyval.expr),(yyvsp[-2].expr),(yyvsp[0].expr));
    }
#line 1520 "parser.cpp"
    break;

  case 45: /* EqExp: RelExp  */
#line 238 "parser.y"
                 {
        (yyval.expr)=(yyvsp[0].expr);
    }
#line 1528 "parser.cpp"
    break;

  case 46: /* EqExp: EqExp EQUAL RelExp  */
#line 241 "parser.y"
                       {
        SynataxAnalyseEqExp((yyval.expr),(yyvsp[-2].expr),(yyvsp[-1].current_symbol),(yyvsp[0].expr));
    }
#line 1536 "parser.cpp"
    break;

  case 47: /* EqExp: EqExp NOT_EQUAL RelExp  */
#line 244 "parser.y"
                           {
        SynataxAnalyseEqExp((yyval.expr),(yyvsp[-2].expr),(yyvsp[-1].current_symbol),(yyvsp[0].expr));
    }
#line 1544 "parser.cpp"
    break;

  case 48: /* RelExp: AddExp  */
#line 248 "parser.y"
                  {
        (yyval.expr)=(yyvsp[0].expr);
    }
#line 1552 "parser.cpp"
    break;

  case 49: /* RelExp: RelExp LESS AddExp  */
#line 251 "parser.y"
                         {
        SynataxAnalyseRelExp((yyval.expr),(yyvsp[-2].expr),(yyvsp[-1].current_symbol),(yyvsp[0].expr));
    }
#line 1560 "parser.cpp"
    break;

  case 50: /* RelExp: RelExp GREATER AddExp  */
#line 254 "parser.y"
                            {
        SynataxAnalyseRelExp((yyval.expr),(yyvsp[-2].expr),(yyvsp[-1].current_symbol),(yyvsp[0].expr));
    }
#line 1568 "parser.cpp"
    break;

  case 51: /* RelExp: RelExp LESS_EQUAL AddExp  */
#line 257 "parser.y"
                               {
        SynataxAnalyseRelExp((yyval.expr),(yyvsp[-2].expr),(yyvsp[-1].current_symbol),(yyvsp[0].expr));
    }
#line 1576 "parser.cpp"
    break;

  case 52: /* RelExp: RelExp GREATER_EQUAL AddExp  */
#line 260 "parser.y"
                                  {
        SynataxAnalyseRelExp((yyval.expr),(yyvsp[-2].expr),(yyvsp[-1].current_symbol),(yyvsp[0].expr));
    }
#line 1584 "parser.cpp"
    break;

  case 53: /* UnaryExp: PrimaryExp  */
#line 267 "parser.y"
                         {
        (yyval.expr)=(yyvsp[0].expr);
    }
#line 1592 "parser.cpp"
    break;

  case 54: /* UnaryExp: UnaryOp UnaryExp  */
#line 270 "parser.y"
                      {
        SynataxAnalyseUnaryExp((yyval.expr),(yyvsp[-1].current_symbol),(yyvsp[0].expr));
    }
#line 1600 "parser.cpp"
    break;

  case 55: /* UnaryOp: ADD  */
#line 274 "parser.y"
               {
        (yyval.current_symbol)=(yyvsp[0].current_symbol);
    }
#line 1608 "parser.cpp"
    break;

  case 56: /* UnaryOp: SUB  */
#line 277 "parser.y"
         {
        (yyval.current_symbol)=(yyvsp[0].current_symbol);
    }
#line 1616 "parser.cpp"
    break;

  case 57: /* UnaryOp: NOT  */
#line 280 "parser.y"
         {
        (yyval.current_symbol)=(yyvsp[0].current_symbol);
    }
#line 1624 "parser.cpp"
    break;


#line 1628 "parser.cpp"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 285 "parser.y"



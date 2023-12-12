#BNF抽象为机器方便处理
#程序
PROG ->PROG_HEAD SUBPROG

#程序首
PROG_HEAD -> PROGRAM ID

#分程序
SUBPROG -> CONST VARIABLE STATEMENT_PART

#常量说明
CONST -> CONST_ ;
CONST -> ^
CONST_ -> const CONST_DEF
CONST_ -> CONST_ , CONST_DEF
#常量定义
CONST_DEF -> ID = UINT


#变量说明
VARIABLE -> VARIABLE_ ;
VARIABLE -> ^
VARIABLE_ -> var ID
VARIABLE_ -> VARIABLE_ , ID

#标识符
ID -> id
#无符号整数
UINT -> num

#语句部分
STATEMENT_PART -> STATEMENT


#赋值
STATEMENT -> ASSIGN 
#条件
STATEMENT -> COND   
#循环
STATEMENT -> WHILE  
#复合   
STATEMENT -> COMP
#空   
STATEMENT -> ^  

#赋值
ASSIGN -> ID := EXPR

#表达式
EXPR -> PLUS_MINUS ITEM
EXPR -> EXPR PLUS_MINUS ITEM

#项
ITEM -> FACTOR
ITEM -> ITEM MUL_DIV FACTOR

#因子
FACTOR -> ID
FACTOR -> UINT
FACTOR -> ( EXPR )

#加减法运算符
PLUS_MINUS -> +
PLUS_MINUS -> -

#乘除法运算符
MUL_DIV -> *
MUL_DIV -> /

#条件
COND -> if CONDITION then STATEMENT
M_COND -> ^

#循环
WHILE -> while CONDITION do STATEMENT

#条件语句
CONDITION -> EXPR REL EXPR

#复合
COMP -> COMP_BEGIN end
COMP_BEGIN -> begin STATEMENT
COMP_BEGIN -> COMP_BEGIN ; STATEMENT




#关系运算符
REL -> =
REL -> <>
REL -> <
REL -> <=
REL -> >
REL -> >=

CALL -> call ID




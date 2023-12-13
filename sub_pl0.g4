grammar pl0;

program
    : block '.' EOF
    ;

block
    : consts? vars_? statement
    ;

consts
    : CONST ident '=' number (',' ident '=' number)* ';'
    ;

vars_
    : VAR ident (',' ident)* ';'
    ;

program
    : PROGRAM ident ';' block ';'
    ;

statement
    : (assignstmt | beginstmt | ifstmt | whilestmt)?
    ;

assignstmt
    : ident ':=' expression
    ;



beginstmt
    : BEGIN statement (';' statement)* END
    ;

ifstmt
    : IF condition THEN statement
    ;

whilestmt
    : WHILE condition DO statement
    ;

condition
    : expression ('=' | '#' | '<' | '<=' | '>' | '>=') expression
    ;

expression
    : ('+' | '-')? term (('+' | '-') term)*
    ;

term
    : factor (('*' | '/') factor)*
    ;

factor
    : ident
    | number
    | '(' expression ')'
    ;

ident
    : STRING
    ;

number
    : NUMBER
    ;


WHILE
    : W H I L E
    ;

DO
    : D O
    ;

IF
    : I F
    ;

THEN
    : T H E N
    ;

ODD
    : O D D
    ;

BEGIN
    : B E G I N
    ;

END
    : E N D
    ;

CONST
    : C O N S T
    ;

VAR
    : V A R
    ;

PROGRAM
    : P R O G R A M
    ;

fragment A
    : ('a' | 'A')
    ;

fragment B
    : ('b' | 'B')
    ;

fragment C
    : ('c' | 'C')
    ;

fragment D
    : ('d' | 'D')
    ;

fragment E
    : ('e' | 'E')
    ;

fragment F
    : ('f' | 'F')
    ;

fragment G
    : ('g' | 'G')
    ;

fragment H
    : ('h' | 'H')
    ;

fragment I
    : ('i' | 'I')
    ;

fragment J
    : ('j' | 'J')
    ;

fragment K
    : ('k' | 'K')
    ;

fragment L
    : ('l' | 'L')
    ;

fragment M
    : ('m' | 'M')
    ;

fragment N
    : ('n' | 'N')
    ;

fragment O
    : ('o' | 'O')
    ;

fragment P
    : ('p' | 'P')
    ;

fragment Q
    : ('q' | 'Q')
    ;

fragment R
    : ('r' | 'R')
    ;

fragment S
    : ('s' | 'S')
    ;

fragment T
    : ('t' | 'T')
    ;

fragment U
    : ('u' | 'U')
    ;

fragment V
    : ('v' | 'V')
    ;

fragment W
    : ('w' | 'W')
    ;

fragment X
    : ('x' | 'X')
    ;

fragment Y
    : ('y' | 'Y')
    ;

fragment Z
    : ('z' | 'Z')
    ;

STRING
    : [a-zA-Z] [a-zA-Z]*
    ;

NUMBER
    : [0-9]+
    ;

WS
    : [ \t\r\n] -> skip
    ;

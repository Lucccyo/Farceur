%{
  open Ast
%}

%token PLUS
%token MINUS
%token MULT
%token DIV
%token L_BRACKET, R_BRACKET
%token<int> NUM
%token EOF

%start main
%type<Ast.ast> main

%%

main:
  r=expr2 EOF {r}
  ;

expr0:
  | a=NUM {Num a}
  ;

expr1:
  | a=expr0 {a}
  | a=expr1 MULT b=expr0 {Mult (a, b)}
  ;

expr2:
  | a=expr1 {a}
  | a=expr2 PLUS b=expr1 {Plus (a, b)}
  ;

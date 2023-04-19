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

%left PLUS
%left MINUS
%left MULT
%left DIV

%start main
%type<Ast.ast> main

%%

main:
  r=expr EOF {r}
  ;

expr:
  | L_BRACKET a= expr R_BRACKET {Bracket a}
  | a=NUM {Num a}
  | a=expr PLUS  b=expr {Plus (a, b)}
  | a=expr MINUS b=expr {Minus (a, b)}
  | a=expr MULT  b=expr {Mult (a, b)}
  | a=expr DIV b=expr {Div (a, b)}
  ;

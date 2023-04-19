{
  open Parser
}

rule token = parse
| ' ' {token lexbuf}
| '+' {PLUS}
| '-' {MINUS}
| '*' {MULT}
| '/' {DIV}
| '(' {L_BRACKET}
| ')' {R_BRACKET}
| ['0'-'9']* as n {NUM (int_of_string n)}
| eof {EOF}

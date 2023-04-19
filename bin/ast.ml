type ast =
  | Num of int
  | Bracket of ast
  | Plus of  ast * ast
  | Minus of ast * ast
  | Mult of  ast * ast
  | Div of  ast * ast
[@@deriving show]

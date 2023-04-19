let () =
  let parse str = Parser.main Lexer.token (Lexing.from_string str) in
  Format.printf "%s@." (Ast.show_ast (parse "1 * 2 + 3"));
  Format.printf "%s@." (Ast.show_ast (parse "1 + 2 * 3"));
  ()

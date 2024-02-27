let lowercase c =
  match c with
  | 'A'..'Z' -> char_of_int ((int_of_char c) + 32)
  | c -> c

let uppercase c =
  match c with
  | 'a'..'z' -> char_of_int ((int_of_char c) - 32)
  | c -> c

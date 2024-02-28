let star x =
  let col = int_of_float (ceil (50. *. x)) in
  let col = max col 1 in (* for the special case x = 0 *)
  let padding = String.make (col - 1) ' ' in
  print_string padding;
  print_char '*';
  print_newline ()

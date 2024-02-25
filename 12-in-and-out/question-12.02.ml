let rec get_int () =
  try
    read_int ()
  with
    Failure _ ->
    print_string "Cannot read input. Please try again.";
    print_newline ();
    get_int ()


let make_tuple () =
  let x = get_int () in
  let y = get_int () in
  let z = get_int () in
  (x, y, z)

let rec copy_ch ch_in ch_out =
  try
    output_string ch_out (input_line ch_in);
    output_char ch_out '\n';
    copy_ch ch_in ch_out
  with
    | End_of_file -> ()
    | e -> print_endline "Cannot copy line"; raise e

let open_file open_fun name =
  try
    open_fun name
  with
    e ->
    print_string "Cannot open file ";
    print_string name;
    print_newline ();
    raise e

let copy_file name_in name_out =
  let ch_in = open_file open_in name_in in
  let ch_out = open_file open_out name_out in
  copy_ch ch_in ch_out;
  close_in ch_in;
  close_out ch_out;
  ()

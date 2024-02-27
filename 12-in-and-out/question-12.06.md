# Question 12.6

> Write a function `copy_file` of type `string → string → unit` which copies a file line by line.
> For example, `copy_file "a.txt" "b.txt"` should produce a file `b.txt` identical to `a.txt`.
> Make sure you deal with the case where the file `a.txt` cannot be found, or where `b.txt` cannot be created or filled.

---

We use an auxiliary function to copy lines from an input channel to an output channel:
```ocaml
let rec copy_ch ch_in ch_out =
  try
    output_string ch_out (input_line ch_in);
    output_char ch_out '\n';
    copy_ch ch_in ch_out
  with
    | End_of_file -> ()
    | e -> print_endline "Cannot copy line"; raise e
```
We also use an auxiliary function for opening a file:
```ocaml
let open_file open_fun name =
  try
    open_fun name
  with
    e ->
    print_string "Cannot open file ";
    print_string name;
    print_newline ();
    raise e
```

We can now assemble the main function:
```ocaml
let copy_file name_in name_out =
  let ch_in = open_file open_in name_in in
  let ch_out = open_file open_out name_out in
  copy_ch ch_in ch_out;
  close_in ch_in;
  close_out ch_out;
  ()
```

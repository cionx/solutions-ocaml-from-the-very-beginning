# Question 16.2

> Write and compile a standalone program to reverse the lines in a text file, writing to another file.

---

The idea is simple:
read all lines and save them as a list of strings.
Then print these strings in reversed order.

```ocaml
let rec all_lines_rev_inner ch lines =
  try
    let line = input_line ch in
    all_lines_rev_inner ch (line :: lines)
  with
    End_of_file -> lines

let all_lines_rev ch =
  all_lines_rev_inner ch []

let rev_lines namein nameout =
  let chin = open_in namein in
  let chout = open_out nameout in
  let lines = all_lines_rev chin in
  List.iter
    (fun line -> output_string chout line; output_char chout '\n')
    lines;
  close_in chin;
  close_out chout

let main () =
  try
    begin
    match Sys.argv with
      | [|_; namein; nameout|] ->
        rev_lines namein nameout
      | _ ->
        print_string "Usage: reverse <input file> <output file>";
        print_newline ()
    end
  with
    e ->
      print_string "An error occurred: ";
      print_string (Printexc.to_string e);
      print_newline ();
      exit 1

let _ = main ()
```

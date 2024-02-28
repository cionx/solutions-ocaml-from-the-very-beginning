# Question 16.4

> Write a standalone program to search for a given string in a file.
> Lines where the string is found should be printed to the screen.

---

We start with an auxiliary function that checks if a given string contains a specified substring:
```ocaml
let rec contains_inner i str sub =
  let lstr = String.length str in
  let lsub = String.length sub in
  if i > lstr - lsub then false
  else if String.sub str i lsub = sub then true
  else contains_inner (i + 1) str sub

let contains str sub =
  contains_inner 0 str sub
```

The next functions print all lines from an input channel/file that contain a specified string:
```ocaml
let grep_ch str ch =
  try
    while true do
      let line = input_line ch in
      if contains line str
      then
        begin
          print_string line;
          print_newline ()
        end
    done
  with
    End_of_file -> ()

let grep_file str filename =
  let ch = open_in filename in
  grep_ch str ch;
  close_in ch
```

Finally, the main function:
```ocaml
let main () =
  try
    match Sys.argv with
    | [|_; str; filename|] ->
      grep_file str filename
    | _ ->
      print_string "Usage: grep <string> <filename>";
      print_newline ()
  with
    e ->
    print_string "An error occured: ";
    print_string (Printexc.to_string e);
    print_newline ()

let _ = main ()
```

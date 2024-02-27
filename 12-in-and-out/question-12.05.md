# Question 12.5

> Write a function to count the number of lines in a given file.

---

We simply count how often we can call `input_line` until `End_of_file` occurs:
```ocaml
let rec count_lines_aux ch counter =
  try
    let _ = input_line ch in
    count_lines_aux ch (counter + 1)
  with
  End_of_file -> counter

let count_lines filename =
  let ch = open_in filename in
  let n = count_lines_aux ch 0 in
  close_in ch;
  n
```

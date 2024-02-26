# Question 12.4

> Write a function which, given a number $x$, prints the $x$-times table to a given file name.
> For example, `table "table.txt" 5` should produce a file `table.txt` containing the following:
> ```text
> 1   2   3   4   5
> 2   4   6   8   10
> 3   6   9   12  15
> 4   8   12  16  20
> 5   10  15  20  25
> ```
> Adding the special tabulation character `'\t'` after each number will line up the columns.

---

We will need an auxiliary function that creates a range of numbers:
```ocaml
(** [range i j] is the list [[i; i+1; ...; j-1; j]] and empty if [i > j]. *)
let rec range i j =
  if i > j then [] else i :: range (i + 1) j
```

We start with a function that prints a single value to an output channel, followed by a tabular character:
```ocaml
let print_entry ch e =
  output_string ch (string_of_int e);
  output_char ch '\t'
```
We can then print a row of numbers to an output channel:
```ocaml
let print_row ch nums =
  iter (print_entry ch) nums;
  output_char ch '\n'
```
Finally, we can print an entire table to an output channel:
```ocaml
let print_table ch n =
  let nums = range 1 n in
  iter
    (fun k ->
      let multiples = map (( * ) k) nums in
      print_row ch multiples)
    nums
```
All that is left is to open and close the file:
```ocaml
let table name n =
  let ch = open_out name in
  print_table ch n;
  close_out ch
```

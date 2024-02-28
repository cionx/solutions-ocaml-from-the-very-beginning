# Question 14.4

> Write a function star of type `float → unit` which, given a floating-point number between zero and one, draws an asterisk to indicate the position.
> An argument of zero will result in an asterisk in column one, and an argument of one an asterisk in column fifty.

---

We are separating the unit interval $(0, 1]$ into 50 evenly-sized buckets $(x_{i - 1}, x_i]$.
We can calculate the bucked number of a nonzero number `x` as follows:
```ocaml
let col = int_of_float (ceil (50. *. x))
```
We then enlarge the bucket $(0, 1/50]$ to $[0, 1/50]$:
```ocaml
let col = max col 1
```

We get overall the following code for `star`:
```ocaml
let star x =
  let col = int_of_float (ceil (50. *. x)) in
  let col = max col 1 in (* for the special case x = 0 *)
  let padding = String.make (col - 1) ' ' in
  print_string padding;
  print_char '*';
  print_newline ()
```

# Question 15.7

> Use the `String` module to count the number of occurrences of the string `"OCaml"` within a given string.

---

We can use the following function to count how often a string `sub` occurs in another string `str`:
```ocaml
let count_occurr str sub =
  let counter = ref 0 in
  let lstr = String.length str in
  let lsub = String.length sub in
  for i = 0 to lstr - lsub do
    if String.sub str i lsub = sub then incr counter
  done;
  !counter
```
The required function is a special case of this more general function:
```ocaml
let count_OCaml s = count_occurr s "OCaml"
```

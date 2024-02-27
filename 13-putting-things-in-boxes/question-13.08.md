# Question 13.8

> The ASCII codes for the lower case letters `'a'...'z'` are `97...122`, and for the upper case letters `'A'...'Z'` they are `65...90`.
> Use the built-in functions `int_of_char` and `char_of_int` to write functions to uppercase and lowercase a character.
> Non-alphabetic characters should remain unaltered.

---

We use character ranges as introduced in Question 3.6.
```ocaml
let lowercase c =
  match c with
  | 'A'..'Z' -> char_of_int ((int_of_char c) + 32)
  | c -> c

let uppercase c =
  match c with
  | 'a'..'z' -> char_of_int ((int_of_char c) - 32)
  | c -> c
```

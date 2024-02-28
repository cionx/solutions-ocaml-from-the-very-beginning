# Question 14.3

> Write a function to separate a floating-point number into its whole and fractional parts.
> Return them as a tuple of type `float × float`.

---

We can use the function `int_of_float` to extract the whole part of a floating point number.
```ocaml
let separate x =
  let i = float_of_int (int_of_float x) in
  let f = x -. i in
  (i, f)
```

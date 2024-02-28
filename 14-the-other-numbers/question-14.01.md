# Question 14.1

> Give a function which rounds a positive floating-point number to the nearest whole number,
returning another floating-point number.

---

It would be best to use the built-in function `Float.round`.
But we can also implement `round` in terms of `ceil` and `floor`:
```ocaml
let round x =
  let c = ceil x in
  if c -. x > 0.5 then floor x else c
```

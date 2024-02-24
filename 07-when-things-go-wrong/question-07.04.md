# Question 7.4

> Write another function which uses the previous one, but handles the exception, and simply returns zero when a suitable integer cannot be found.

---

We can implement the described function as follows:
```ocaml
let sqrt_int_noexc n =
  try sqrt_int n
  with Negative -> 0
```

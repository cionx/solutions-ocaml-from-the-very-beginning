# Question 7.2

> Write another function `smallest_or_zero` which uses the `smallest` function but if `Not_found` is raised, returns zero.

---

We can write the function `smallest_or_zero` in dependence of `smallest` as follows:
```ocaml
let smallest_or_zero l =
  try smallest l
  with Not_found -> 0
```

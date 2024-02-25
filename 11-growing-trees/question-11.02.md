# Question 11.2

> Write a function which flips a tree left to right such that, if it were drawn on paper, it would appear to be a mirror image.

---

We can write this function as follows:
```ocaml
let rec flip tr =
  match tr with
  | Lf -> Lf
  | Br (x, l, r) -> Br (x, flip r, flip l)
```

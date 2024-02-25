# Question 11.3

> Write a function to determine if two trees have the same shape, irrespective of the actual values of the elements.

---

We can write this function as follows:
```ocaml
let rec same_shape tr tr' =
  match tr, tr' with
  | Lf, Lf -> true
  | Lf, Br _ | Br _, Lf -> false
  | Br (_, l, r), Br (_, l', r') ->
    same_shape l l' && same_shape r r'
```

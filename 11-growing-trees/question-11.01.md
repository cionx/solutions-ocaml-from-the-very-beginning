# Question 11.1

> Write a function of type `α → α tree → bool` to determine if a given element is in a tree.

---

We can write this function as follows:
```ocaml
let rec contains x tr =
  match tr with
  | Lf -> false
  | Br (y, l, r) ->
    x = y || contains x l || contains x r
```

# Question 5.4

> Write a function to detect if a list is already in sorted order.

---

We can implement the desired function as follows:
```ocaml
let rec is_sorted l =
  match l with
  | [] | [_] -> true
  | x :: y :: t -> x <= y && is_sorted (y :: t)
```

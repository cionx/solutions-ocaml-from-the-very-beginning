# Question 13.7

> Write a function table which, given an integer, builds the `int array array` representing the multiplication table up to that number.
> For example, `table 5` should yield:
> ```text
> 1   2   3   4   5
> 2   4   6   8   10
> 3   6   9   12  15
> 4   8   12  16  20
> 5   10  15  20  25
> ```
> There is more than one way to represent this as an array of arrays; you may choose.

---

We can solve the question with the following code:
```ocaml
(** [mults k n] is the array [[|k; 2 * k; ..., n * k|]]. *)
let mults k n =
  let arr = Array.make n 0 in
  for i = 0 to n - 1 do
    arr.(i) <- k * (i + 1)
  done;
  arr

let table n =
  let tab = Array.make n [||] in
  for i = 0 to n - 1 do
    tab.(i) <- mults (i + 1) n
  done;
  tab
```

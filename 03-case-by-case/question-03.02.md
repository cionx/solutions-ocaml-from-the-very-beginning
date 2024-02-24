# Question 3.2

> Use pattern matching to write a recursive function which, given a positive integer $n$, returns the sum of all the integers from $1$ to $n$.

---

We can write the described function as follows:
```ocaml
let rec sum n =
  match n with
  | 0 -> 0
  | _ -> n + sum (n - 1)
```

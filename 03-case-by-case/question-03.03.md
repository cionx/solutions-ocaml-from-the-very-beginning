# Question 3.3

> Use pattern matching to write a function which, given two numbers $x$ and $n$, computes $x^n$.

---

We can write the desired function as follows:
```ocaml
let rec power x n =
  match n with
  | 0 -> 1
  | _ -> x * power x (n - 1)
```

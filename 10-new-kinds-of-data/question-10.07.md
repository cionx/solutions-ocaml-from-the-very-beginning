# Question 10.7

> Use the `option` type to deal with the problem that `Division_by_zero` may be raised from the `evaluate` function.

---

We try to evaluate the expression with `evaluate`.
If a division by zero occurs at some point, then the exception `Division_by_zero` propagates through the rest of the evaluation.
It therefore suffices to check for this exception at the highest level:
```ocaml
let rec evaluate_opt e =
  try Some (evaluate e) with Division_by_zero -> None
```

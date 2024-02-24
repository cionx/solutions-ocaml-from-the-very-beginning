# Question 3.1

> Rewrite the `not` function from the previous chapter in pattern matching style.

---

We can rewrite the `not` function as follows:
```ocaml
let not b =
  match b with
  | true -> false
  | false -> true
```

# Question 11.5

> Write a function to combine two dictionaries represented as trees into one.
> In the case of clashing keys, prefer the value from the first dictionary.

---

We can implement this function `union` in terms of `insert`:
```ocaml
let rec union a b =
  match a with
  | Lf -> b
  | Br ((k, v), l, r) ->
    union l (insert (union r b) k v)
```

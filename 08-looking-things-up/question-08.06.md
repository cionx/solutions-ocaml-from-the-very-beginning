# Question 8.6

> Write the function `union a b` which forms the union of two dictionaries.
> The union of two dictionaries is the dictionary containing all the entries in one or other or both.
> In the case that a key is contained in both dictionaries, the value in the first should be preferred.

---

We iterate over `a` with `add`.
```ocaml
let rec union a b =
  match a with
  | [] -> b
  | (k, v) :: a' -> add k v (union a' b)
```

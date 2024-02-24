# Exercise 8.5

> Define a function to turn any list of pairs into a dictionary.
> If duplicate keys are found, the value associated with the first occurrence of the key should be kept.

---

We iterate over the list with `add`:
```ocaml
let rec to_dic l =
  match l with
  | [] -> []
  | (k, v) :: t -> add k v (to_dic t)
```
Note that earlier list entries are added last.
This ensures in the case of duplicate keys that the first occurrence is kept.

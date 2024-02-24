# Question 8.3

> Write a function to build a dictionary from two equal length lists, one containing keys and another containing values.
> Raise the exception `Invalid_argument` if the lists are not of equal length.

---

We make it the user’s responsibility to avoid duplicate keys.
```ocaml
let rec zip keys values =
  match keys, values with
  | [], [] -> []
  | k :: ks, v :: vs -> (k, v) :: zip ks vs
  | _ -> raise (Invalid_argument "zip")
```

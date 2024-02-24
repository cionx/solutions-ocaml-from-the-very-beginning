# Question 8.2

> Define a function `replace` which is like `add`, but raises `Not_found` if the key is not already there.

---

We can implement the function `replace` as follows:
```ocaml
let rec replace k v d =
  match d with
  | [] -> raise Not_found
  | (k', v') :: d' ->
    if k = k'
    then (k, v) :: d'
    else  (k', v') :: replace k v d'
```

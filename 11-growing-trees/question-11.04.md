# Question 11.4

> Write a function `tree_of_list` which builds a tree representation of a dictionary from a list representation of a dictionary.

---

We start with the empty tree `Lf` and then use the function `insert` to insert the list entries.
```ocaml
let rec tree_of_list_aux d tr =
  match d with
  | [] -> tr
  | (k, v) :: d' -> tree_of_list_aux d' (insert tr k v)

let tree_of_list l =
  tree_of_list_aux l Lf
```

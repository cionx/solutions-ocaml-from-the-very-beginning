# Question 6.6

> Write a function `filter` which takes a function of type `α → bool` and an `α list` and returns a list of just those elements of the argument list for which the given function returns `true`.

---

We can implement the function `filter` as follows:
```ocaml
let rec filter p l =
  match l with
  | [] -> []
  | h :: t ->
    let t' = filter p t in
    if p h then h :: t' else t'
```

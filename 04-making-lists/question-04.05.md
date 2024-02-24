# Question 4.5

> Write a function `member` of type `α → α list → bool` which returns `true` if an element exists in a list, or `false` if not.
> For example, `member 2 [1; 2; 3]` should evaluate to `true`, but `member 3 [1; 2]` should evaluate to `false`.

---

We can implement `member` tail-recursively as follows:
```ocaml
let rec member x l =
  match l with
  | [] -> false
  | h :: t -> x = h || member x t
```

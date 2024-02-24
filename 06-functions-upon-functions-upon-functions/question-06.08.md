# Question 6.8

> Write a function `mapl` which maps a function of type `α → β` over a list of type `α list list` to produce a list of type `β list list`.

---

We can implement the function `mapl` in terms of `map`:
```ocaml
let mapl f ll =
  map (fun l -> map f l) ll
```

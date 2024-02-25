# Question 10.5

> Write `take`, `drop`, and `map` functions for the sequence type.

---

We can write these functions as follows:
```ocaml
let rec take n s =
  match s with
  | Nil -> Nil
  | Cons (h, t) ->
    if n <= 0 then Nil else Cons(h, take (n - 1) t)

let rec drop n s =
  match s with
  | Nil -> Nil
  | Cons (_, t) ->
    if n <= 0 then s else drop (n - 1) t

let rec map f s =
  match s with
  | Nil -> Nil
  | Cons (h, t) -> Cons (f h, map f t)
```

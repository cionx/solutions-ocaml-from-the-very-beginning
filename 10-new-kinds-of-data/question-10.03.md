# Question 10.3

> Write a function which rotates a `rect` such that it is at least as tall as it is wide.

---

We can write the desired function as follows:
```ocaml
let rotate r =
  match r with
  | Square x -> Square x
  | Rect (h, w) ->
    if h >= w then Rect (h, w) else Rect (w, h)
```

# Question 10.2

> Now write a function of type `rect → int` to calculate the area of a given `rect`.

---

We can implement the desired function as follows:
```ocaml
let area r =
  match r with
  | Rect (h, w) -> h * w
  | Square s -> s * s
```

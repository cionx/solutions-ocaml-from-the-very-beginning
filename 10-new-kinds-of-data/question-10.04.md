# Question 10.4

> Use this function to write one which, given a `rect list`, returns another such list which has the smallest total width and whose members are sorted narrowest first.

---

We first rotate every rectangle in the list to be at least as tall as wide.
This minimizes the total width of the list.
We then use `msort` with a custom comparison function to sort this list according to width.
```ocaml
let width r =
  match r with
  | Square x -> x
  | Rect (h, w) -> w

let cmp_rect r1 r2 =
  width r1 <= width r2

let sort_rect rs =
  let rotated_rs = map rotate rs in
  msort cmp_rect rotated_rs
```

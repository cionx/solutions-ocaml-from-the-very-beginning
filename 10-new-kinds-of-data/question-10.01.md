# Question 10.1

> Design a new type `rect` for representing rectangles.
> Treat squares as a special case.

---

A rectangle consists of its height and its width.
A square requires only one number to describe.
```ocaml
type rect = Rect of int * int | Square of int
```

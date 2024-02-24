# Question 6.2

> Write a function `clip` which, given an integer, clips it to the range 1 … 10 so that integers bigger than 10 round down to 10, and those smaller than 1 round up to 1.
> Write another function `cliplist` which uses this first function together with `map` to apply this clipping to a whole list of integers.

---

We can implement the function `clip` as follows:
```ocaml
let clip n =
  if n >= 10 then 10
  else if n <= 1 then 1
  else n
```

The function `cliplist` can now be implemented as follows:
```ocaml
let cliplist l =
  map clip l
```

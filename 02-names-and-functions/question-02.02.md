# Question 2.2

> Write a function which returns true if both of its arguments are non-zero, and false otherwise.
> What is the type of your function?

---

The described function can be written as follows:
```ocaml
let both_nonzero x y = x <> 0 && y <> 0
```
This function is of type `int -> int -> bool`, as can be checked in utop:
```ocaml
# let both_nonzero x y = x <> 0 && y <> 0;;
val both_nonzero : int -> int -> bool = <fun
```

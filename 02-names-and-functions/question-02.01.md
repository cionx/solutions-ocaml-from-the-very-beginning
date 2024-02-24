# Question 2.1

> Write a function which multiplies a given number by ten.
> What is its type?

---

The described function can be written as follows:
```ocaml
let tenfold x = 10 * x
```
It is of type `int -> int`, which can be checkd in utop:
```ocaml
# let tenfold x = 10 * x;;
val tenfold : int -> int = <fun>
```

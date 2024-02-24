# Question 2.4

> Write a function `power x n` which raises `x` to the power `n`.
> Give its type.

---

We can implement a power function as follows:
```ocaml
let rec power x n =
  if n = 0 then 1
  else if n mod 2 = 0 then power (x * x) (n / 2)
  else x * power (x * x) (n / 2)
```
Its type is `int -> int -> int`, as can be checked in utop:
```ocaml
# let rec power x n =
  if n = 0 then 1
  else if n mod 2 = 0 then power (x * x) (n / 2)
  else x * power (x * x) (n / 2);;
val power : int -> int -> int = <fun>
```

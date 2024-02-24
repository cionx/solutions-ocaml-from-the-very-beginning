# Question 2.3

> Write a recursive function which, given a number $n$, calculates the sum $1 + 2 + 3 + \dotsb + n$.
> What is its type?

---

We can implement the described function as follows:
```ocaml
let rec sum n =
  if n = 0 then 0 else n + sum (n - 1)
```
This function has type `int -> int`, as can be checked in utop:
```ocaml
# let rec sum n =
  if n = 0 then 0 else n + sum (n - 1);;
val sum : int -> int = <fun>
```

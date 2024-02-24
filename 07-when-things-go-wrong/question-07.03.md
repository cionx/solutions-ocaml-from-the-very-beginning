# Question 7.3

> Write an exception definition and a function which calculates the largest integer smaller than or equal to the square root of a given integer.
> If the argument is negative, the exception should be raised.

---

We can define the new exception as follows:
```ocaml
exception Negative
```

We can now implement the given function as follows:
```ocaml
let rec sqrt_helper k n =
  if k * k > n then k - 1 else sqrt_helper (k + 1) n

let sqrt_int n =
  if n < 0 then raise Negative else sqrt_helper 1 n
```

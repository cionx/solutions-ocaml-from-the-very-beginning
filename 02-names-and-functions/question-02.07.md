# Question 2.7

> Can you suggest a way of preventing the non-termination of the factorial function in the case of a zero or negative argument?

---

The factorial of zero is one.
For negative numbers we can simply return the number itself;
in this way, invalid arguments result in (mathematically) invalid output values.
```ocaml
let rec fact_aux n =
  if n = 0
  then 1
  else n * (fact_aux (n - 1))

let fact n =
  if n < 0 then n else fact_aux n
```

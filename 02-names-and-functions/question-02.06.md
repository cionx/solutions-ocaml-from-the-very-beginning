# Question 2.6

> What is the result of the expression `let x = 1 in let x = 2 in x + x`?

---

The second definition of `x` shadows the first one.
The result is therefore `2 + 2`, and thus `4`.
We can check this claim in utop:
```ocaml
# let x = 1 in let x = 2 in x + x;;
Line 1, characters 4-5:
Warning 26 [unused-var]: unused variable x.

- : int = 4
```

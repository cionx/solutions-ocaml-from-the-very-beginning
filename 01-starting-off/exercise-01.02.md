# Exercise 1.2

> Consider the evaluations of the expressions `1 + 2 mod 3`, `(1 + 2) mod 3`, and `1 + (2 mod 3)`.
> What can you conclude about the + and mod operators?

---

We have the following result:
```ocaml
# 1 + 2 mod 3;;
- : int = 3

# (1 + 2) mod 3;;
- : int = 0

# 1 + (2 mod 3);;
- : int = 3
```
We see that `1 + 2 mod 3` is interpreted as `1 + (2 mod 3)`.
In other words, `mod` has higher precedence than `+`.

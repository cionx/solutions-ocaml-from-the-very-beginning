# Question 1.5

> What happens when you try to evaluate the expression `1 / 0`?
> Why?

---

We get an error because division by `0` is ill-defined:
```ocaml
# 1 / 0;;
Exception: Division_by_zero.
```

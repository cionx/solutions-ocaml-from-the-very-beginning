# Question 1.8

> What is the effect of the comparison operators like `<` and `>` on alphabetic values of type `char`?
> For example, what does `'p' < 'q'` evaluate to?
> What is the effect of the comparison operators on the booleans, `true` and `false`?

---

It seems that characters are compared by their ASCII values:
```ocaml
# 'A' < 'a';;
- : bool = true

# 'a' < 'b';;
- : bool = true

# 'B' < 'a';;
- : bool = true

# 'p' < 'q';;
- : bool = true
```

Booleans are compared so that `false` is strictly smaller than `true` (i.e., as if `false` was represented by `0` and `true` represented by `1`):
```ocaml
# false < true;;
- : bool = true
```

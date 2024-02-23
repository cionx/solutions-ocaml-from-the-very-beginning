# Question 1.6

> Can you discover what the `mod` operator does when one or both of the operands are negative?
> What about if the first operand is zero?
> What if the second is zero?

---

### First part

We make the following observations.
```ocaml
# 5 mod 2;;
- : int = 1

# -5 mod 2;;
- : int = -1

# 5 mod -2;;
- : int = 1

# -5 mod -2;;
- : int = -1
```
The result takes on the sign of the first argument.

### Second part

Mathematically, $0 \bmod n = 0$ for every integer $n$.
This is also the case in OCaml:
```ocaml
utop # 0 mod 2;;
- : int = 0

utop # 0 mod 3;;
- : int = 0

utop # 0 mod -2;;
- : int = 0

utop # 0 mod -3;;
- : int = 0
```

### Third part

Mathematically, $n \bmod 0 = n$ for every integer $n$.
But in OCaml we get an error because we are trying to divide by zero:
```ocaml
# 5 mod 0;;
Exception: Division_by_zero.
```

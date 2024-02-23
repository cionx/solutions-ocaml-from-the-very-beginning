# Question 1..4

> `The range of numbers available is limited.
> `There are two special numbers: `min_int` and `max_int`.
> `What are their values on your computer?
> `What happens when you evaluate the expressions `max_int + 1` and `min_int - 1`?

---

On our system, `min_int` and `max_int` are as follows:
```ocaml
# min_int;;
- : int = -4611686018427387904

# max_int;;
- : int = 4611686018427387903
```
These numbers are $-2^{62}$ and $2^{62} - 1$ respectively.

The expression `max_int + 1` wraps back around to `min_int`, and the expression `min_int - 1` wraps back around to `max_int`.

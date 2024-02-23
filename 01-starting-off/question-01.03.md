# Question 1.3

> A programmer writes `1+2 * 3+4`.
> What does this evaluate to?
> What advice would you give him?

---

The expression is parsed as `1 + (2 * 3) + 4`, which is evaluated to `11`.
The spacing in `1+2 * 3+4` is therefore misleading, as it suggests `(1 + 2) * (3 + 4)` instead, which would evaluate to `21`.
A better choice of spacing would be `1 + 2*3 + 4`.

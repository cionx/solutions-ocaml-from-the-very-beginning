# Question 5.2

> We know that `take` and `drop` can fail if called with incorrect arguments.
> Show that this is never the case in `msort`.

---

Evaluation of `take n l` or `drop n l` fails if `n` is strictly larger than the length of `n`.
This never happens in `msort`, since we are using half the length of `l` for `n`.

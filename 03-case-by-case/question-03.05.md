# Question 3.5

> What does `match 1 + 1 with 2 -> match 2 + 2 with 3 -> 4 | 4 -> 5` evaluate to?

---

The expression evaluates as follows:
```text
  match 1 + 1 with 2 -> match 2 + 2 with 3 -> 4 | 4 -> 5
-->
  match 2 with 2 -> match 2 + 2 with 3 -> 4 | 4 -> 5
-->
  match 2 + 2 with 3 -> 4 | 4 -> 5
-->
  match 4 with 3 -> 4 | 4 -> 5
-->
  5
```
We can check this result in utop:
```text
# match 1 + 1 with 2 -> match 2 + 2 with 3 -> 4 | 4 -> 5;;

Line 1, characters 22-54:
Warning 8 [partial-match]: this pattern-matching is not exhaustive.
Here is an example of a case that is not matched:
0

Line 1, characters 0-54:
Warning 8 [partial-match]: this pattern-matching is not exhaustive.
Here is an example of a case that is not matched:
0

Line 1, characters 22-54:
Warning 8 [partial-match]: this pattern-matching is not exhaustive.
Here is an example of a case that is not matched:
0

Line 1, characters 0-54:
Warning 8 [partial-match]: this pattern-matching is not exhaustive.
Here is an example of a case that is not matched:
0

- : int = 5
```

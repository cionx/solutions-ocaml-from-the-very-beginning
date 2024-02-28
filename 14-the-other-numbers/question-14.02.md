# Question 14.2

> Write a function to find the point equidistant from two given points in two dimensions.

---

For any two points $p = (p_1, p_2)$ and $q = (q_1, q_2)$ there exist infinitely many points that are equidistant to $p$ and $q$:
- If $p \neq q$, then the entire line that is perpendicular to $p - q$ and goes through $(p + q) / 2$.
- If $p = q$, then the entire plane.

Among all points that are equidistant to $p$ and $q$ there is precisely one point that minimizes the distance to $p$ and $q$:
the center $(p + q) / 2$.
```ocaml
let center (p1, p2) (q1, q2) =
  ((p1 +. q1) /. 2., (p2 +. q2) /. 2.)
```

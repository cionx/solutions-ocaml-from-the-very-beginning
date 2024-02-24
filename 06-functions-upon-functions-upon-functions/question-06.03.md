# Question 6.3

> Express your function `cliplist` again, this time using an anonymous function instead of `clip.`

---

We get the following implementation:
```ocaml
let cliplist l =
  map (fun n -> if n >= 10 then 10 else if n <= 1 then 1 else n) l
```

# Question 15.3

> Write a function to count the number of exclamation marks in a string, using one or more functions from the `String` module.

---

We can once again use `String.iter`:
```ocaml
let count_exl s =
  let counter = ref 0 in
  String.iter (fun c -> if c = '!' then incr counter) s;
  !counter
```

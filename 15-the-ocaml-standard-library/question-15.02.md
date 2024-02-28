# Question 15.2

> Use `List.mem` to write a function which returns `true` only if every list in a `bool list list` contains `true` somewhere in it.

---

We can implement the described function as follows:
```ocaml
let all_contain_true ls =
  List.for_all (List.mem true) ls
```

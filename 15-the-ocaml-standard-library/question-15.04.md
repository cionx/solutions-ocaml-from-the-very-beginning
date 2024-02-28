# Question 15.4

> Use the `String.map` function to write a function to return a new copy of a string with all exclamation marks replaced with periods (full stops).

---

We just have to replace exclamation marks by periods.
```ocaml
let quiet s =
  String.map (fun c -> if c = '!' then '.' else c) s
```

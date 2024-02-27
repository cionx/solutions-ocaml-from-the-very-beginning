# Question 13.2

> What is the difference between `[ref 5; ref 5]` and `let x = ref 5 in [x; x]`?

---

The expression `[ref 5; ref 5]` is a list consisting of two distinct (!) references, which just so happen to hold equal values.
We can change one of the entries without changing the other one:
```ocaml
# let l = [ref 5; ref 5];;
val l : int ref list = [{contents = 5}; {contents = 5}]

# let r = List.hd l in r := 6;;
- : unit = ()

# l;;
- : int ref list = [{contents = 6}; {contents = 5}]
```

The expression `let x = ref 5 in [x; x]` is a list containing the same (!) reference two times:
changing one of the entries also changes the other one:
```ocaml
# let l = let x = ref 5 in [x; x];;
val l : int ref list = [{contents = 5}; {contents = 5}]

# let r = List.hd l in r := 6;;
- : unit = ()

# l;;
- : int ref list = [{contents = 6}; {contents = 6}]
```

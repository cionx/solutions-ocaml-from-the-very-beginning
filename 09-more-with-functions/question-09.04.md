# Question 9.4

> Write a function `mapll` which maps a function over lists of lists of lists.
> You must not use the `let rec` construct.
> Is it possible to write a function which works like `map`, `mapl`, or `mapll` depending upon the list given to it?

---

We can implement `mapll` as follows:
```ocaml
let mapll f =
  map (map (map f))
```

We don’t think it is possible to automatically switch between `map`, `mapl` and `mapll`, because these functions have different types.

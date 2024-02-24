# Question 8.4

> Now write the inverse function:
> given a dictionary, return the pair of two lists – the first containing all the keys, and the second containing all the values.

---

We can implement the described function with `fst`, `snd` and `map`:
```ocaml
let unzip d =
  (map fst d, map snd d)
```

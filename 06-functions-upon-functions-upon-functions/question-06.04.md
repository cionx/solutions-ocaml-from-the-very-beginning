# Question 6.4

> Write a function `apply` which, given another function, a number of times to apply it, and an initial argument for the function, will return the cumulative effect of repeatedly applying the function.
> For instance, `apply f 6 4` should return `f (f (f (f (f (f 4))))))`.
> What is the type of your function?

---

We can implement `apply` tail-recursively:
```ocaml
let rec apply f n x =
  if n = 0
  then x
  else apply f (n - 1) (f x)
```

The functnion `apply` is of type `('a -> 'a) -> int -> 'a -> 'a`.

# Question 9.3

> Why can we not write a function to halve all the elements of a list like this: `map (( / ) 2) [10; 20; 30]`?
> Write a suitable division function which can be partially applied in the manner we require.

---

The function `( / ) 2` is of the correct type `int -> int`.
But `(( / 2) 2) x` isn’t `x` divided by `2`;
instead it is `2` divided by `x`.

We can write a division function that switches the arguments of `( / )` and then use this function instead of `( / )`.
```ocaml
let divide_by x y = y / x

let halve_map = map (divide_by 2)
```

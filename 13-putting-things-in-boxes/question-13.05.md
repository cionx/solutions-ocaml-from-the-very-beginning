# Question 13.5

> Write a function to compute the sum of the elements in an integer array.

---

We can write the described function as follows:
```ocaml
let sum arr =
  let acc = ref 0 in
  for i = 0 to Array.length arr - 1 do
    acc := !acc + arr.(i)
  done;
  !acc
```

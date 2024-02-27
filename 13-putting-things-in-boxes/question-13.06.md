# Question 13.6

> Write a function to reverse the elements of an array in place (i.e. do not create a new array).

---

We use an auxiliary function for swapping two entries of an array:
```ocaml
let swap arr i j =
  let temp = arr.(i) in
  arr.(i) <- arr.(j);
  arr.(j) <- temp;
  ()
```

We can reverse an array by
- swapping the first element with the last element, then
- swapping the second element with the second to last element, then
- swapping the third element with the third to last element,
- etc.

We thus arrive at the following code:
```ocaml
let rev arr =
  let i = ref 0 in
  let j = ref (Array.length arr - 1) in
  while i < j do
    swap arr !i !j;
    i := !i + 1;
    j := !j - 1
  done
```

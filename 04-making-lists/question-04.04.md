# Question 4.4

> Write a function `drop_last` which returns all but the last element of a list.
> If the list is empty, it should return the empty list.
> So, for example, `drop_last [1; 2; 4; 8]` should return `[1; 2; 4]`.
> What about a tail recursive version?

---

A naive implementation is as follows:
```ocaml
let rec drop_last_1 l =
  match l with
  | [] | [_] -> []
  | h :: t -> h :: drop_last_1 t
```

To implement a tail-recursive version of `drop_last` we assume that we have already implemented a tail-recursive version of `rev` (as will be done in the upcoming Question 3.7.).
We can then use the following code:
```ocaml
let rec drop_last_2_inner l acc =
  match l with
  | [] | [_] -> rev acc
  | h :: t -> drop_last_2_inner t (h :: acc)

let drop_last_2 l =
  drop_last_2_inner l []
```

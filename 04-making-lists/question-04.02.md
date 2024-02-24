# Question 4.2

> Write a function `count_true` which counts the number of `true` elements in a list.
> For example, `count_true [true; false; true]` should return `2`.
> What is the type of your function?
> Can you write a tail recursive version?

---

A naive implementation is as follows:
```ocaml
let rec count_true_1 l =
  match l with
  | [] -> 0
  | true :: t -> 1 + count_true_1 t
  | false :: t -> count_true_1 t
```
This function is of type `bool list -> int`.
These results can be checked in utop:
```ocaml
# let rec count_true_1 l =
  match l with
  | [] -> 0
  | true :: t -> 1 + count_true_1 t
  | false :: t -> count_true_1 t;;
val count_true_1 : bool list -> int = <fun>

# count_true_1 [true; false; true];;
- : int = 2
```

The following implementation is tail recursive:
```ocaml
let rec count_true_2_inner l acc =
  match l with
  | [] -> acc
  | true :: t -> count_true_2_inner t (acc + 1)
  | false :: t -> count_true_2_inner t acc

let count_true_2 l =
  count_true_2_inner l 0
```

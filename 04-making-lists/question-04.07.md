# Question 4.7

> Can you explain why the `rev` function we defined is inefficient?
> How does the time it takes to run relate to the size of its argument?
> Can you write a more efficient version using an accumulating argument?
> What is its efficiency in terms of time taken and space used?

---

The current implementation of `rev` is as follows:
```ocaml
let rec rev l =
  match l with
    [] -> []
  | h::t -> rev t @ [h]
```
The problem is that `rev t @ [h]` takes time and space that is linear in the length of `rev t`, and thus linear in the length of `t`.
This leads overall to a quadratic amount of time of space needed for `rev`.

The following version of `rev` is tail-recursive.
It takes time a linear amount of time, and a constant amount of additional space.
```ocaml
let rec rev_inner l acc =
  match l with
  | [] -> acc
  | h :: t -> rev_inner t (h :: acc)

let rev l =
  rev_inner l []
```

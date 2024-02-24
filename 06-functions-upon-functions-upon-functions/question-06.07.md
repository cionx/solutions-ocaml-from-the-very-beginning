# Question 6.7

> Write the function `for_all` which, given a function of type `α → bool` and an argument list of type `α list` evaluates to `true` if and only if the function returns `true` for every element of the list.
> Give examples of its use.

---

We can implement the function `for_all` as follows:
```ocaml
let rec for_all p l =
  match l with
  | [] -> true
  | h :: t -> p h && for_all p t
```
(This function is tail-recursive and stops once a `false` entry has been found, thanks to the short-circuit nature of the `( && )` operator.)

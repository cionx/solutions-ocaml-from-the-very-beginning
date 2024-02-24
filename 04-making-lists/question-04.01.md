# Question 4.1

> Write a function `evens` which does the opposite to `odds`, returning the even numbered elements in a list.
> For example, `evens [2; 4; 2; 4; 2]` should return `[4; 4]`.
> What is the type of your function?

---

We can implement `evens` as follows:
```ocaml
let rec evens l =
  match l with
  | [] | [_] -> []
  | _ :: x :: t -> x :: evens t
```
This function is of type `'a list -> 'a list`.

These results can be checked in utop:
```ocaml
# let rec evens l =
  match l with
  | [] | [_] -> []
  | _ :: x :: t -> x :: evens t;;
val evens : 'a list -> 'a list = <fun>

# evens [1; 2; 3; 4; 5; 6; 7; 8; 9; 10];;
- : int list = [2; 4; 6; 8; 10]
```

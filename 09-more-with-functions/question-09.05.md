# Question 9.5

> Write a function `truncate` which takes an integer and a list of lists, and returns a list of lists, each of which has been truncated to the given length.
> If a list is shorter than the given length, it is unchanged.
> Make use of partial application.

---

We start with a function `trunc n l` that truncates a list to a given length.
(This function is basically another version of `take`, which allows `n` to be larger than the length of `l`.)
```ocaml
let rec trunc n l =
  match l with
  | [] -> []
  | h :: t ->
      if n > 0
      then h :: trunc (n - 1) t
      else []
```
We can now implement `truncate` with help of partial application and `map`.
```ocaml
let truncate n ls =
  map (trunc n) ls
```

# Question 4.6

> Use your `member` function to write a function `make_set` which, given a list, returns a list which contains all the elements of the original list, but has no duplicate elements.
> For example, `make_set [1; 2; 3; 3; 1]` might return `[2; 3; 1]`.
> What is the type of your function?

---

We can implement `make_set` as follows:
```ocaml
let rec make_set l  =
  match l with
  | [] -> []
  | h :: t ->
    let t' = make_set t in
    if member h t' then t' else h :: t'
```

# Question 9.2

> Recall the function `member x l` which determines if an element `x` is contained in a list `l`.
> What is its type?
> What is the type of `member x`?
> Use partial application to write a function `member_all x ls` which determines if an element is a member of all the lists in the list of lists `ls`.

---

The function `member` is of type `'a -> 'a list -> bool`.
If `x` is of type `t`, then `member x` is thus of type `t list -> bool`.
(Note that `member x` is no longer polymorphic.
But its type still depends on the type of `x`.)

We can use the function `for_all` from Question 6.7 to implement `member_all`:
```ocaml
let member_all x ls =
  for_all (member x) ls
```

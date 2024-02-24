# Question 5.6

> We mentioned that the comparison functions like `<` work for many OCaml types.
> Can you determine, by experimentation, how they work for lists?
> For example, what is the result of `[1; 2] < [2; 3]`?
> What happens when we sort the following list of type `char list list`?
> Why?
> ```ocaml
> [['o'; 'n'; 'e']; ['t'; 'w'; 'o']; ['t'; 'h'; 'r'; 'e'; 'e']]
> ```

---

We suspect that lists (of the same type) are ordered lexicographically.
Experimenting in utop seems to support this suspicion.
The given list should therefore be sorted as follows:
```ocaml
[['o'; 'n'; 'e']; ['t'; 'h'; 'r'; 'e'; 'e']; ['t'; 'w'; 'o'] ]
```
This is indeed the case:
```ocaml
# let l = [['o'; 'n'; 'e']; ['t'; 'w'; 'o']; ['t'; 'h'; 'r'; 'e'; 'e']];;
val l : char list list =
  [['o'; 'n'; 'e']; ['t'; 'w'; 'o']; ['t'; 'h'; 'r'; 'e'; 'e']]

# msort l;;
- : char list list =
[['o'; 'n'; 'e']; ['t'; 'h'; 'r'; 'e'; 'e']; ['t'; 'w'; 'o']]
```

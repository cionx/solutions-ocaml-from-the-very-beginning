# Question 4.3

> Write a function which, given a list, builds a palindrome from it.
> A palindrome is a list which equals its own reverse.
> You can assume the existence of `rev` and `@`.
> Write another function which determines if a list is a palindrome.

---

We can implement the two function as follows:
```ocaml
let make_palindrome l =
  l @ (rev l)

let check_palindrome l =
  l = rev l
```

# Question 3.6

> There is a special pattern `x..y` to denote continuous ranges of characters, for example `'a'..'z'` will match all lowercase letters.
> Write functions `islower` and `isupper`, each of type `char → bool`, to decide on the case of a given letter.

---

We can write the desired functions as follows:
```ocaml
let islower c =
  match c with
  | 'a'..'z' -> true
  | _ -> false

let isupper c =
  match c with
  | 'A'..'Z' -> true
  | _ -> false
```

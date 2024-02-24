# Question 6.1

> Write a simple recursive function `calm` to replace exclamation marks in a `char list` with periods.
> For example `calm ['H'; 'e'; 'l'; 'p'; '!'; ' '; 'F'; 'i'; 'r'; 'e'; '!']` should evaluate to `['H'; 'e'; 'l'; 'p'; '.'; ' '; 'F'; 'i'; 'r'; 'e'; '.']`.
> Now rewrite your function to use `map` instead of recursion.
> What are the types of your functions?

---

The following is a recursive implementation:
```ocaml
let rec calm_rec l =
  match l with
  | [] -> []
  | h :: t -> (if h = '!' then '.' else h) :: (calm_rec t)
```

The following implementation uses `map` instead:
```ocaml
let calm_map l =
  map (fun c -> if c = '!' then '.' else c) l
```

Both functions are of type `char list -> char list`.

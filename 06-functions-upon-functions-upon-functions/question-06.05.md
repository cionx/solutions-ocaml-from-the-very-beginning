# Question 6.5

> Modify the insertion sort function from the preceding chapter to take a comparison function, in the same way that we modified merge sort in this chapter.
> What is its type?

---

We simply have to use a comparison function `cmp` instead of the build in operator `( <= )`:
```ocaml
let rec insert cmp x l =
  match l with
  | [] -> [x]
  | h :: t ->
    if cmp x h
    then x :: h :: t
    else h :: insert cmp x t

let rec sort cmp l =
  match l with
  | [] -> []
  | h :: t -> insert cmp h (sort cmp t)
```
The function insert is of type `('a -> 'a -> bool) -> 'a -> 'a list -> 'a list`, and the function `sort` is of type `('a -> 'a -> bool) -> 'a list -> 'a list`.

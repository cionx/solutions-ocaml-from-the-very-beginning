# Question 9.6

> Write a function which takes a list of lists of integers and returns the list composed of all the first elements of the lists.
> If a list is empty, a given number should be used in place of its first element.

---

We first write an auxiliary function that returns the first entry of a list, or a specified value if the list is empty:
```ocaml
let hd init l =
  match l with
  | [] -> init
  | h :: _ -> h
```
We then use `map` to write the desired function:
```ocaml
let firsts init ls =
  map (hd init) ls
```

We note that this function is polymorphic, and works not only with lists of lists of integers.

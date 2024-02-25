# Question 11.6

> Can you define a type for trees which, instead of branching exactly two ways each time, can branch zero or more ways, possibly different at each branch?
> Write simple functions like `size`, `total`, and `map` using your new type of tree.

---

We can represent such a tree either as empty or as a value together with a nonempty list of children.
```ocaml
type 'a tree = Empty | Branch of 'a * 'a tree list
```
We don’t need the `Leaf` variant anymore:
if a tree node has no children, then its list of children is simply empty.

For `size` and `total` we will use an auxiliary function that sums together a list of integers:
```ocaml
let rec sum l =
  match l with
  | [] -> 0
  | h :: t -> h + sum t
```
We can now implement both `size` and `total`:
```ocaml
let rec size tr =
  match tr with
  | Empty -> 0
  | Branch (_, trs) ->
    1 + sum (map size trs)

let rec total tr =
  match tr with
  | Empty -> 0
  | Branch (x, trs) ->
    x + sum (map total trs)
```

We can directly implement a version of `map`:
```ocaml
let rec map_tree f tr =
  match tr with
  | Empty -> Empty
  | Branch (x, trs) ->
    Branch (f x, map (map_tree f) trs)
```

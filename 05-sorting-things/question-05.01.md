# Question 5.1

> In `msort,` we calculate the value of the expression `length l / 2` twice.
> Modify `msort` to remove this inefficiency.

---

We can modify `msort` as follows:
```ocaml
let rec msort l =
  match l with
  | [] -> []
  | [x] -> [x]
  | _ ->
    let len = length l / 2 in
    let left = take len l in
    let right = drop len l in
    merge (msort left) (msort right)
```

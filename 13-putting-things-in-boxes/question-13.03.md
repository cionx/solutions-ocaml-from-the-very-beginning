# Question 13.3

> Imagine that the `for ... to ... do ... done` construct did not exist.
> How might we create the same behaviour?

---

We can replace the code
```ocaml
for i = a to b do
  ⟨code⟩
done
```
by the following construct:
```ocaml
let rec loop i b =
  if i > b
  then ()
  else ⟨code⟩;
       loop (i + 1) b
in
loop a b
```

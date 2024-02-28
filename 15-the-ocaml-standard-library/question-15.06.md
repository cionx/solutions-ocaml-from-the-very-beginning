# Question 15.6

> Do the same with the `Buffer` module.
> This will be faster.

---

We can implement the concatination function as follows:
```ocaml
let concat l =
  let buf = Buffer.create 16 in
  List.iter (fun s -> Buffer.add_string buf s) l;
  Buffer.contents buf
```

# Question 12.1

> Write a function to print a list of integers to the screen in the same format OCaml uses – i.e. with square brackets and semicolons.

---

We can write the described function as follows:
```ocaml
let print_list l =
  match l with
  | [] -> print_string "[]\n"
  | h :: t ->
    print_string "[";
    print_int h;
    iter (fun i -> print_string "; "; print_int i) t;
    print_string "]\n"
```

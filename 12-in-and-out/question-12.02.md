# Question 12.2

> Write a function to read three integers from the user, and return them as a tuple.
> What exceptions could be raised in the process?
> Handle them appropriately.

---

We use a wrapper `get_int` around `read_int` that handles exceptions:
```ocaml
let rec get_int () =
  try
    read_int ()
  with
    Failure _ ->
    print_string "Cannot read input. Please try again.";
    print_newline ();
    get_int ()
```
We can then implement the desired function by reading three integers and then combine them into a tuple:
```ocaml
let make_tuple () =
  let x = get_int () in
  let y = get_int () in
  let z = get_int () in
  (x, y, z)
```

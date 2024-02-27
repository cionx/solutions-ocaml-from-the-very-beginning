# Question 13.4

> What are the types of these expressions?
> ```ocaml
> [|1; 2; 3|]
> [|true; false; true|]
> [|[|1|]|]
> [|[1; 2; 3]; [4; 5; 6]|]
> [|1; 2; 3|].(2)
> [|1; 2; 3|].(2) <- 4
> ```

---

The expression `[|1; 2; 3|]` is of type `int array`, as can be checked in utop:
```ocaml
# [|1; 2; 3|];;
- : int array = [|1; 2; 3|]
```

The expression `[|true; false; true|]` is similarly of type `bool array`, as can be checked in utop:
```ocaml
# [|true; false; true|];;
- : bool array = [|true; false; true|]
```

The expression `[|[|1|]|]` is of type `int array array`, as can be checked in utop:
```ocaml
# [|[|1|]|];;
- : int array array = [|[|1|]|]
```

The expression `[|[1; 2; 3]; [4; 5; 6]|]` is of type `int list array`, as can be checked in utop:
```ocaml
# [|[1; 2; 3]; [4; 5; 6]|];;
- : int list array = [|[1; 2; 3]; [4; 5; 6]|]
```

The expression `[|1; 2; 3|].(2)` is of type `int` (its value is `3`), as can be checked in utop:
```ocaml
# [|1; 2; 3|].(2);;
- : int = 3
```

The expression `[|1; 2; 3|].(2) <- 4` is of type unit, as can be checked in utop:
```ocaml
# [|1; 2; 3|].(2) <- 4;;
- : unit = ()
```

# Exercise 1.1

> What are the types of the following expressions and what do they evaluate to, and why?
> ```ocaml
> 17
> 1 + 2 * 3 + 4
> 800 / 80 / 8
> 400 > 200
> 1 <> 1
> true || false
> true && false
> if true then false else true
> '%'
> 'a' + 'b'
> ```

---

### `17`

`17` is already a value, namely of type `int`.
We can test this result in utop:
```ocaml
# 17;;
- : int = 17
```

### `1 + 2 * 3 + 4`

The expression `1 + 2 * 3 + 4` evaluates to `11`, and is thus of type `int`.
We can test this result in utop:
```ocaml
# 1 + 2 * 3 + 4;;
- : int = 11
```

### `800 / 80 / 8`

The expression `800 / 80 / 8` is parsed as `(800 / 80) / 8`.
It is thus evaluated to `10 / 8`, and thus `1`.
The type of these expressions is `int`.
We can test this result in utop:
```ocaml
# 800 / 80 / 8;;
- : int = 1
```

### `400 > 200`

The number 400 is strictly larger than the number 200, whence the expression `400 > 200` evaluates to `true`.
This value is of type `bool`.
We can test this result in utop:
```ocaml
# 400 > 200;;
- : bool = true
```

### `1 <> 1`

The number `1` is not different from itself, whence `1 <> 1` evaluates to `false`.
The type of these expressions is `bool`.
We can test this result in utop:
```ocaml
# 1 <> 1;;
- : bool = false
```

### `true || false`

The expression `true || falses` evaluates to `true`, which is of type `bool`.
We can test this result in utop:
```ocaml
# true || false;;
- : bool = true
```

### `true && false`

The expression `true && false` evaluates to `false`, which is of type `bool`.
We can test this result in utop:
```ocaml
# true && false;;
- : bool = false
```

### `if true then false else true`

The expression `if true then false else true` evaluates to `false`, which is of type `bool`.
We can test this result in utop:
```ocaml
# if true then false else true;;
- : bool = false
```

### `'%'`

The expression `'%'` is a character, and thus of type `char`.
We can test this result in utop:
```ocaml
# '%';;
- : char = '%'
```

### `'a' + 'b'`

The addition operator `+` expects its arguments to be of type `int`, but `'a'` and `'b'` are of type `char` instead.
The expression `'a' + 'b'` will therefore result in an error.
We can test this result in utop:
```ocaml
# 'a' + 'b';;
   ^
Error: This expression has type char but an expression was expected of type int
```

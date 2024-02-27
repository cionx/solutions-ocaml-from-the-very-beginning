# Question 13.1

> Consider the expression
> ```ocaml
> let x = ref 1 in let y = ref 2 in x := !x + !x; y := !x + !y; !x + !y
> ```
> What references have been created?
> What are their initial and final values after this expression has been evaluated?
> What is the type of this expression?

---

We start with
```ocaml
let x = ref 1 in …
```
creating a reference `x` with value `1`.
With
```ocaml
… let y = ref 2 in …
```
we then create a reference `y` with value `2`.
The next part
```ocaml
… x := !x + !x; …
```
overwrites the value of `x` with `1 + 1 = 2`.
The following part
```ocaml
… y := !x + !y; …
```
then overwrites `y` with the value `2 + 2 = 4`.
Finally, the remaining expression
```ocaml
… !x + !y
```
evaluates to `2 + 4 = 6`.

The overall expression evaluates to `6`.
It is thus of type `int`.
The two references `x` and `y` were created.
The initial value of `x` is `1`, and the final value is `2`.
The initial value of `y` is `2`, and the final value is `4`.

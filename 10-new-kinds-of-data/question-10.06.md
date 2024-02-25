# Question 10.6

> Extend the `expr` type and the evaluate function to allow raising a number to a power.

---

We extend the type `expression` by an additional variant named `Power`:
```ocaml
type expr =
  | Num of int
  | Add of expr * expr
  | Subtract of expr * expr
  | Multiply of expr * expr
  | Divide of expr * expr
  | Power of expr * expr
```
We use the `power` function from Question 2.4 to evaluate an expression of variant `Power`:
```ocaml
let rec evaluate e =
  match e with
  | Num x -> x
  | Add (e, e') -> evaluate e + evaluate e'
  | Subtract (e, e') -> evaluate e - evaluate e'
  | Multiply (e, e') -> evaluate e * evaluate e'
  | Divide (e, e') -> evaluate e / evaluate e'
  | Power (e, e') -> power (evaluate e) (evaluate e')
```
The user is responsible for ensuring that the exponent is non-negative.

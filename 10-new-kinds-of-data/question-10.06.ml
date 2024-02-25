(** From a previous exercise. *)

let rec power x n =
  if n = 0 then 1
  else if n mod 2 = 0 then power (x * x) (n / 2)
  else x * power (x * x) (n / 2)



(** For this exercise. *)

type expr =
  | Num of int
  | Add of expr * expr
  | Subtract of expr * expr
  | Multiply of expr * expr
  | Divide of expr * expr
  | Power of expr * expr

let rec evaluate e =
  match e with
  | Num x -> x
  | Add (e, e') -> evaluate e + evaluate e'
  | Subtract (e, e') -> evaluate e - evaluate e'
  | Multiply (e, e') -> evaluate e * evaluate e'
  | Divide (e, e') -> evaluate e / evaluate e'
  | Power (e, e') -> power (evaluate e) (evaluate e')

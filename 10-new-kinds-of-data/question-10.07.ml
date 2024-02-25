(** From the book. *)

type expr =
  | Num of int
  | Add of expr * expr
  | Subtract of expr * expr
  | Multiply of expr * expr
  | Divide of expr * expr

let rec evaluate e =
  match e with
  | Num x -> x
  | Add (e, e') -> evaluate e + evaluate e'
  | Subtract (e, e') -> evaluate e - evaluate e'
  | Multiply (e, e') -> evaluate e * evaluate e'
  | Divide (e, e') -> evaluate e / evaluate e'



(** For this exercise. *)

let rec evaluate_opt e =
  try Some (evaluate e) with Division_by_zero -> None


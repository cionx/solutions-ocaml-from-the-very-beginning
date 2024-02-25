(** From the book. *)

type 'a tree =
  | Br of 'a * 'a tree * 'a tree
  | Lf



(** For this exercise. *)

let rec flip tr =
  match tr with
  | Lf -> Lf
  | Br (x, l, r) -> Br (x, flip r, flip l)

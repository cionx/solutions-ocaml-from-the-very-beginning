(** From the book. *)

type 'a tree =
  | Br of 'a * 'a tree * 'a tree
  | Lf



(** For this exercise. *)

let rec same_shape tr tr' =
  match tr, tr' with
  | Lf, Lf -> true
  | Lf, Br _ | Br _, Lf -> false
  | Br (_, l, r), Br (_, l', r') ->
    same_shape l l' && same_shape r r'

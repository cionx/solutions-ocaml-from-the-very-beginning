(** From the book. *)

type 'a tree =
  | Br of 'a * 'a tree * 'a tree
  | Lf



(** For this exercise. *)

let rec contains x tr =
  match tr with
  | Lf -> false
  | Br (y, l, r) ->
    x = y || contains x l || contains x r

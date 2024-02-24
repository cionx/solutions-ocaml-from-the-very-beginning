(** From the previous exercises. *)

type rect = Rect of int * int | Square of int



(** For this exercise. *)

let rotate r =
  match r with
  | Square x -> Square x
  | Rect (h, w) ->
    if h >= w then Rect (h, w) else Rect (w, h)

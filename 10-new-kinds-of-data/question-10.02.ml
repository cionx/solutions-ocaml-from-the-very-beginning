(** From the previous exercises. *)

type rect = Rect of int * int | Square of int




(** For this exercise. *)

let area r =
  match r with
  | Rect (h, w) -> h * w
  | Square s -> s * s

(** From the book. *)

let rec map f l  =
  match l with
  | [] -> []
  | h :: t -> f h :: map f t



(** For this exercise. *)

let mapll f =
  map (map (map f))

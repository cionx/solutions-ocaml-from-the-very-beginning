(** From the book. *)

let rec map f l =
  match l with
  | [] -> []
  | h :: t -> f h :: map f t



(** For this exercise. *)

let divide_by x y = y / x

let halve_map = map (divide_by 2)

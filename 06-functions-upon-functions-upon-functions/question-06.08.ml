(** From the book. *)

let rec map f l =
  match l with
  | [] -> []
  | h :: t -> f h :: map f t



(** For this exercise. *)

let mapl f ll =
  map (fun l -> map f l) ll

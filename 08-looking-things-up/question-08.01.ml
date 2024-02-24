(** From the book. *)

let rec length l =
  match l with
  | [] -> 0
  | _ :: t -> 1 + length t



(** For this exercise. *)

let num_keys d =
  length d

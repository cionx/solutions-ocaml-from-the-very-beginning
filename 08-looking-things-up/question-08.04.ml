(** From the book. *)

let rec map f l =
  match l with
  | [] -> []
  | h :: t -> f h :: map f t



(** For this exercise. *)

let unzip d =
  (map fst d, map snd d)

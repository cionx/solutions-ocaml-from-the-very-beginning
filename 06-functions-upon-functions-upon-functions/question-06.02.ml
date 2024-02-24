(** From the book. *)

let rec map f l =
  match l with
  | [] -> []
  | h :: t -> f h :: map f t



(** For this exercise. *)

let clip n =
  if n >= 10 then 10
  else if n <= 1 then 1
  else n

let cliplist l =
  map clip l

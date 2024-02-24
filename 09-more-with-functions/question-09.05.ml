(** From the book. *)

let rec map f l =
  match l with
  | [] -> []
  | h :: t -> f h :: map f t



(** For this exercise. *)

let rec trunc n l =
  match l with
  | [] -> []
  | h :: t ->
      if n > 0
      then h :: trunc (n - 1) t
      else []

let truncate n ls =
  map (trunc n) ls

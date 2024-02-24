(** From the book. *)

let map f l =
  match l with
  | [] -> []
  | h :: t -> f h :: map f t



(** For this exercise. *)

let hd init l =
  match l with
  | [] -> init
  | h :: _ -> h

let firsts init ls =
  map (hd init) ls

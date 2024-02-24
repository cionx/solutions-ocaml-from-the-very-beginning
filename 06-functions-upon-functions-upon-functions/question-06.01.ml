(** From the book. *)

let rec map f l =
  match l with
  | [] -> []
  | h :: t -> f h :: map f t



(** For this exercise. *)

let rec calm_rec l =
  match l with
  | [] -> []
  | h :: t -> (if h = '!' then '.' else h) :: (calm_rec t)

let calm_map l =
  map (fun c -> if c = '!' then '.' else c) l

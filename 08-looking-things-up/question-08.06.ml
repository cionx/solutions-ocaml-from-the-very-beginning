(** From the book. *)

let rec add k v d =
  match d with
  | [] -> [(k, v)]
  | (k', v') :: d' ->
    if k = k'
    then (k, v) :: d'
    else (k', v') :: add k v d'



(** For this exercise. *)

let rec union a b =
  match a with
  | [] -> b
  | (k, v) :: a' -> add k v (union a' b)

(** From the book. *)

let rec add k v d =
  match d with
  | [] -> [(k, v)]
  | (k', v') :: d' ->
    if k = k'
    then (k, v) :: d'
    else (k', v') :: add k v d'



(** For this exercise. *)

let rec to_dic l =
  match l with
  | [] -> []
  | (k, v) :: t -> add k v (to_dic t)

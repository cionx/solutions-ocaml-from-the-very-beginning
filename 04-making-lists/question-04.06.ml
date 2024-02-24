(** From the previous exercise. *)

let rec member x l =
  match l with
  | [] -> false
  | h :: t -> x = h || member x t



(** For this exercise. *)

let rec make_set l  =
  match l with
  | [] -> []
  | h :: t ->
    let t' = make_set t in
    if member h t' then t' else h :: t'

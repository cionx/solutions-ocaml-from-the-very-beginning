(** From previous exercises. *)

let rec member x l =
  match l with
  | [] -> false
  | h :: t -> x = h || member x t

let rec for_all p l =
  match l with
  | [] -> true
  | h :: t -> p h && for_all p t



(** For this exercise. *)

let member_all x ls =
  for_all (member x) ls

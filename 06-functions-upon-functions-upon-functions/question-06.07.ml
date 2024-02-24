let rec for_all p l =
  match l with
  | [] -> true
  | h :: t -> p h && for_all p t

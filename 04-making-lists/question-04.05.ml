let rec member x l =
  match l with
  | [] -> false
  | h :: t -> x = h || member x t

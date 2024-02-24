let rec filter p l =
  match l with
  | [] -> []
  | h :: t ->
    let t' = filter p t in
    if p h then h :: t' else t'

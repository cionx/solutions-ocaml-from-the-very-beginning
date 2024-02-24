let rec insert cmp x l =
  match l with
  | [] -> [x]
  | h :: t ->
    if cmp x h
    then x :: h :: t
    else h :: insert cmp x t

let rec sort cmp l =
  match l with
  | [] -> []
  | h :: t -> insert cmp h (sort cmp t)

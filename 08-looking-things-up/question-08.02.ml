let rec replace k v d =
  match d with
  | [] -> raise Not_found
  | (k', v') :: d' ->
    if k = k'
    then (k, v) :: d'
    else  (k', v') :: replace k v d'

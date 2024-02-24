let rec zip keys values =
  match keys, values with
  | [], [] -> []
  | k :: ks, v :: vs -> (k, v) :: zip ks vs
  | _ -> raise (Invalid_argument "zip")

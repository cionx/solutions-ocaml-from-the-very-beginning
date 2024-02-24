let rec evens l =
  match l with
  | [] | [_] -> []
  | _ :: x :: t -> x :: evens t

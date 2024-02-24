let rec is_sorted l =
  match l with
  | [] | [_] -> true
  | x :: y :: t -> x <= y && is_sorted (y :: t)

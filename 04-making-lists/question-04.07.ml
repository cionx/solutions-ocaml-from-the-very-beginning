let rec rev_inner l acc =
  match l with
  | [] -> acc
  | h :: t -> rev_inner t (h :: acc)

let rev l =
  rev_inner l []

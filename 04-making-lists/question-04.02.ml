let rec count_true_1 l =
  match l with
  | [] -> 0
  | true :: t -> 1 + count_true_1 t
  | false :: t -> count_true_1 t

let rec count_true_2_inner l acc =
  match l with
  | [] -> acc
  | true :: t -> count_true_2_inner t (acc + 1)
  | false :: t -> count_true_2_inner t acc

let count_true_2 l =
  count_true_2_inner l 0

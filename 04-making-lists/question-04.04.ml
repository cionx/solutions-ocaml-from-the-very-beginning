(** From the book. *)

let rec rev l =
  match l with
  | [] -> []
  | h :: t -> rev t @ [h]



(** For this exercise. *)

let rec drop_last_1 l =
  match l with
  | [] | [_] -> []
  | h :: t -> h :: drop_last_1 t

let rec drop_last_2_inner l acc =
  match l with
  | [] | [_] -> rev acc
  | h :: t -> drop_last_2_inner t (h :: acc)

let drop_last_2 l =
  drop_last_2_inner l []

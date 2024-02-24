(** From the book. *)

let rec rev l =
  match l with
  [] -> []
  | h::t -> rev t @ [h]



(** For this exercise. *)

let make_palindrome l =
  l @ (rev l)

let check_palindrome l =
  l = rev l

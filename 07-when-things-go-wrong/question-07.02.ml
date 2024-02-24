(** From the previous exercise. *)

(** [find_positive l] is the first positive entry in [l]. Raises [Not_found] if
    no positive entry exists. *)
let rec find_positive l =
  match l with
  | [] -> raise Not_found
  | h :: t -> if h > 0 then h else find_positive t

(** [smallest_helper sofar l] is the smallest positive entry of [l] that is
    smaller or equal to [sofar]. *)
let rec smallest_helper sofar l =
  match l with
  | [] -> sofar
  | h :: t ->
      smallest_helper (if h > 0 && h < sofar then h else sofar) t

(** [smallest l] is the smallest positive entry in [l]. Raises [Not_found] if no
    positive entry exists. *)
let smallest l =
  smallest_helper (find_positive l) l



(** For this exercise. *)

let smallest_or_zero l =
  try smallest l
  with Not_found -> 0

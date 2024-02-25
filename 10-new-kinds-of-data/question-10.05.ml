(** From the book. *)

type 'a sequence = Nil | Cons of 'a * 'a sequence



(** For this exercise. *)

let rec take n s =
  match s with
  | Nil -> Nil
  | Cons (h, t) ->
    if n <= 0 then Nil else Cons(h, take (n - 1) t)

let rec drop n s =
  match s with
  | Nil -> Nil
  | Cons (_, t) ->
    if n <= 0 then s else drop (n - 1) t

let rec map f s =
  match s with
  | Nil -> Nil
  | Cons (h, t) -> Cons (f h, map f t)

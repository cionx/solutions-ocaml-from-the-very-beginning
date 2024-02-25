(** From the book. *)

let rec length l =
  match l with
  | [] -> 0
  | _ :: t -> 1 + length t

let rec take n l =
  if n = 0 then [] else
    match l with
    | [] -> []
    | h :: t -> h :: take (n - 1) t

let rec drop n l =
  if n = 0 then l else
    match l with
    | [] -> []
    | h :: t -> drop (n - 1) t

let rec map f l =
  match l with
  | [] -> []
  | h :: t -> f h :: map f t

let rec merge cmp x y =
  match x, y with
  | [], l -> l
  | l, [] -> l
  | hx :: tx, hy :: ty ->
    if cmp hx hy
    then hx :: merge cmp tx y
    else hy :: merge cmp x ty

let rec msort cmp l =
  match l with
  | [] -> []
  | [x] -> [x]
  | _ ->
    let left = take (length l / 2) l in
    let right = drop (length l / 2) l in
    merge cmp (msort cmp left) (msort cmp right)


(** From the previous exercises. *)

type rect = Rect of int * int | Square of int

let rotate r =
  match r with
  | Square x -> Square x
  | Rect (h, w) ->
    if h >= w then Rect (h, w) else Rect (w, h)



(** For this exercise. *)

let width r =
  match r with
  | Square x -> x
  | Rect (_, w) -> w

let cmp_rect r1 r2 =
  width r1 <= width r2

let sort_rect rs =
  let rotated_rs = map rotate rs in
  msort cmp_rect rotated_rs

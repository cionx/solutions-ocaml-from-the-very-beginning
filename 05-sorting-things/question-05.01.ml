(** From the book. *)

let rec length l =
  match l with
  | [] -> 0
  | _ :: t -> 1 + length t

let rec take n l =
  match l with
  | [] -> []
  | h :: t ->
    if n = 0 then []
    else h :: take (n - 1) t

let rec drop n l =
  match l with
  | [] -> []
  | _ :: t ->
    if n = 0 then l
    else drop (n - 1) t

let rec merge x y =
  match x, y with
  | [], l -> l
  | l, [] -> l
  | hx :: tx, hy :: ty ->
      if hx <= hy
      then hx :: merge tx y
      else hy :: merge x ty



(** For this exercise. *)

let rec msort l =
  match l with
  | [] -> []
  | [x] -> [x]
  | _ ->
    let len = length l / 2 in
    let left = take len l in
    let right = drop len l in
    merge (msort left) (msort right)

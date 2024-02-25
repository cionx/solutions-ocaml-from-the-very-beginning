(** From the book. *)

let rec length l =
  match l with
  | [] -> 0
  | h :: t -> 1 + length t

let rec map f l =
  match l with
  | [] -> []
  | h :: t -> f h :: map f t



(** For this exercise. *)

type 'a tree = Empty | Branch of 'a * 'a tree list

let rec sum l =
  match l with
  | [] -> 0
  | h :: t -> h + sum t

let rec size tr =
  match tr with
  | Empty -> 0
  | Branch (_, trs) ->
    1 + sum (map size trs)

let rec total tr =
  match tr with
  | Empty -> 0
  | Branch (x, trs) ->
    x + sum (map total trs)

let rec map_tree f tr =
  match tr with
  | Empty -> Empty
  | Branch (x, trs) ->
    Branch (f x, map (map_tree f) trs)



(** For testing. *)

(**   3
     / \
    2   4
   /
  1        *)
let tr = Branch (3, [
                    Branch (2, [
                               Branch(1, [])
                               ]);
                    Branch (4, [])
                    ])


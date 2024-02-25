(** From the book. *)

type 'a tree =
  | Br of 'a * 'a tree * 'a tree
  | Lf

let rec insert tr k v =
  match tr with
  | Lf -> Br ((k, v), Lf, Lf)
  | Br ((k', v'), l, r) ->
      if k < k' then Br ((k', v'), insert l k v, r)
      else if k > k' then Br ((k', v'), l, insert r k v)
      else Br ((k, v), l, r)



(** For this exercise. *)

let rec tree_of_list_aux d tr =
  match d with
  | [] -> tr
  | (k, v) :: d' -> tree_of_list_aux d' (insert tr k v)

let tree_of_list l =
  tree_of_list_aux l Lf

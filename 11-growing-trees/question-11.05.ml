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

let rec union a b =
  match a with
  | Lf -> b
  | Br ((k, v), l, r) ->
    union l (insert (union r b) k v)

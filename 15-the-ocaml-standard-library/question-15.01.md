# Question 15.1

> Write your own version of the function `List.concat`.
> The implementation OCaml provides is not tail-recursive.
> Can you write one which is?

---

A naive implementation is as follows:
```ocaml
let rec concat ls =
  match ls with
  | [] -> []
  | h :: t -> h @ concat t
```
However, this function is not tail-recursive.

We can implement a tail-recursive version as follows:
```ocaml
(** [rev_append l1 l2] is [(rev l1) @ l2], but tail-recursive. *)
let rec rev_append l1 l2 =
  match l1 with
  | [] -> l2
  | h :: t -> rev_append t (h :: l2)

(** [rev l] is [l] reversed. Tail-recursive. *)
let rev l =
  rev_append l []

let rec rev_concat_inner ls acc =
  match ls with
  | [] -> acc
  | l :: ls' -> rev_concat_inner ls' (rev_append l acc)

(** [rev_concat ls] is [rev (concat ls)], but tail-recursive. *)
let rev_concat ls =
  rev_concat_inner ls []

let concat ls =
  rev (rev_concat ls)
```

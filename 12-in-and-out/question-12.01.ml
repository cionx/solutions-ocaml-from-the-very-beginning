(** From the book. *)

let rec iter f l =
  match l with
  | [] -> ()
  | h :: t -> f h; iter f t



(** For this question. *)

let print_list l =
  match l with
  | [] -> print_string "[]\n"
  | h :: t ->
    print_string "[";
    print_int h;
    iter (fun i -> print_string "; "; print_int i) t;
    print_string "]\n"

(** From the book. *)

let rec map f l =
  match l with
  | [] -> []
  | h :: t -> f h :: map f t

let rec iter f l =
  match l with
  | [] -> ()
  | h :: t -> f h; iter f t



(** [range i j] is the list [[i; i+1; ...; j-1; j]] and empty if [i > j]. *)
let rec range i j =
  if i > j then [] else i :: range (i + 1) j

let print_entry ch e =
  output_string ch (string_of_int e);
  output_char ch '\t'

let print_row ch nums =
  iter (print_entry ch) nums;
  output_char ch '\n'

let print_table ch n =
  let nums = range 1 n in
  iter
    (fun k ->
      let multiples = map (( * ) k) nums in
      print_row ch multiples)
    nums

let table name n =
  let ch = open_out name in
  print_table ch n;
  close_out ch

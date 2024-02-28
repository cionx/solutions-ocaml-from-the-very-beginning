(** From the book. *)

let rec map f l =
  match l with
  | [] -> []
  | h :: t -> f h :: map f t

let rec iter f l =
  match l with
  | [] -> ()
  | h :: t -> f h; iter f t



(** From the previous exercise. *)

let star x =
  let col = int_of_float (ceil (50. *. x)) in
  let col = max col 1 in (* for the special case x = 0 *)
  let padding = String.make (col - 1) ' ' in
  print_string padding;
  print_char '*';
  print_newline ()



(** For this exercise. *)

(** Generating the function values. *)

let rec inputs a b step =
  if a > b
  then []
  else a :: inputs (a +. step) b step

let outputs f a b step =
  map f (inputs a b step)

(** Plotting the values. *)

let rec fold_aux binop l acc =
  match l with
  | [] -> acc
  | h :: t -> fold_aux binop t (binop h acc)

let fold binop l =
  match l with
  | [] -> raise (Invalid_argument "fold")
  | h :: t -> fold_aux binop t h

let max_lst l =
  fold Float.max l

let min_lst l =
  fold Float.min l

let normalize l =
  match l with
  | [] -> []
  | _ ->
    let min = min_lst l in
    let max = max_lst l in
    let width = max -. min in
    if width = 0. then map (fun _ -> 0.5) l
    else
      let n x = (x -. min) /. width in
      map n l

let plot_lst values =
  iter star (normalize values)

let plot f a b step =
  plot_lst (outputs f a b step)

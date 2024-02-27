(** [mults k n] is the array [[|k; 2 * k; ..., n * k|]]. *)
let mults k n =
  let arr = Array.make n 0 in
  for i = 0 to n - 1 do
    arr.(i) <- k * (i + 1)
  done;
  arr

let table n =
  let tab = Array.make n [||] in
  for i = 0 to n - 1 do
    tab.(i) <- mults (i + 1) n
  done;
  tab

let separate x =
  let i = float_of_int (int_of_float x) in
  let f = x -. i in
  (i, f)

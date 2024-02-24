exception Negative

let rec sqrt_helper k n =
  if k * k > n then k - 1 else sqrt_helper (k + 1) n

let sqrt_int n =
  if n < 0 then raise Negative else sqrt_helper 1 n

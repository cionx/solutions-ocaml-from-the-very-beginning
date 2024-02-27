let sum arr =
  let acc = ref 0 in
  for i = 0 to Array.length arr - 1 do
    acc := !acc + arr.(i)
  done;
  !acc

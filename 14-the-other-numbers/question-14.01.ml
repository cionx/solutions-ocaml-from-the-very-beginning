let round x =
  let c = ceil x in
  if c -. x > 0.5 then floor x else c

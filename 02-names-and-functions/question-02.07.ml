let rec fact_aux n =
  if n = 0
  then 1
  else n * (fact_aux (n - 1))

let fact n =
  if n < 0 then n else fact_aux n

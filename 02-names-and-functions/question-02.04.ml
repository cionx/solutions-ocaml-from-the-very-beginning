let rec power x n =
  if n = 0 then 1
  else if n mod 2 = 0 then power (x * x) (n / 2)
  else x * power (x * x) (n / 2)

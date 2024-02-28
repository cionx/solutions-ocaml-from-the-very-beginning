let count_exl s =
  let counter = ref 0 in
  String.iter (fun c -> if c = '!' then incr counter) s;
  !counter

let count_occurr str sub =
  let counter = ref 0 in
  let lstr = String.length str in
  let lsub = String.length sub in
  for i = 0 to lstr - lsub do
    if String.sub str i lsub = sub then incr counter
  done;
  !counter

let count_OCaml s = count_occurr s "OCaml"

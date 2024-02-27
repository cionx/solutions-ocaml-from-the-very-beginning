let swap arr i j =
  let temp = arr.(i) in
  arr.(i) <- arr.(j);
  arr.(j) <- temp;
  ()

let rev arr =
  let i = ref 0 in
  let j = ref (Array.length arr - 1) in
  while i < j do
    swap arr !i !j;
    i := !i + 1;
    j := !j - 1
  done

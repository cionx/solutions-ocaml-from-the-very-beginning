let x = ref 1 in let y = ref 2 in x := !x + !x; y := !x + !y; !x + !y

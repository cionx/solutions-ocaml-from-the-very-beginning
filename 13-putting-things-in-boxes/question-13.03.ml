let rec loop i b =
  if i > b
  then ()
  else ⟨code⟩;
       loop (i + 1) b
in
loop a b

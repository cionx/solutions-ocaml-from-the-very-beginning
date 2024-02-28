let concat l =
  let buf = Buffer.create 16 in
  List.iter (fun s -> Buffer.add_string buf s) l;
  Buffer.contents buf

# Question 16.1

> Extend our example to print the character histogram data as we did in Chapter 13.

---

We extend the type `stats` to also hold frequencies of ASCII characters:
```ocaml
type stats = int * int * int * int * int array
```
We also extend the utility functions:
```ocaml
let lines (l, _, _, _, _) = l
let characters (_, c, _, _, _) = c
let words (_, _, w, _, _) = w
let sentences (_, _, _, s, _) = s
let histogram (_, _, _, _, h) = h
```

We now extend the function `stats_from_channel` to also create a histogram:
```ocaml
let stats_from_channel in_channel =
  let lines = ref 0 in
  let characters = ref 0 in
  let words = ref 0 in
  let sentences = ref 0 in
  let histogram = Array.make 256 0 in
  try
    while true do
      let line = input_line in_channel in
      lines := !lines + 1;
      characters := !characters + String.length line;
      String.iter
        (fun c ->
          match c with
          '.' | '?' | '!' -> sentences := !sentences + 1
          | ' ' -> words := !words + 1
          | _ -> ())
        line;
      String.iter
        (fun c ->
          let i = int_of_char c in
          histogram.(i) <- histogram.(i) + 1)
      line;
    done;
    (0, 0, 0, 0, [||]) (* Just to make the type agree *)
  with
    End_of_file -> (!lines, !characters, !words, !sentences, histogram)
```

Finally, we extend `stats.ml` to print this histogram:
```ocaml
try
  begin match Sys.argv with
    [|_; filename|] ->
      let stats = Textstat.stats_from_file filename in
      print_string "Words: ";
      print_int (Textstat.words stats);
      print_newline ();
      print_string "Characters: ";
      print_int (Textstat.characters stats);
      print_newline ();
      print_string "Sentences: ";
      print_int (Textstat.sentences stats);
      print_newline ();
      print_string "Lines: ";
      print_int (Textstat.lines stats);
      print_newline ();
      print_string "Character frequencies:";
      print_newline ();
      let hist = Textstat.histogram stats in
      for i = 0 to 255 do
        if hist.(i) > 0 then
          begin
            print_string "\tFor character '";
            print_char (char_of_int i);
            print_string "' (character number ";
            print_int i;
            print_string ") the count is ";
            print_int hist.(i);
            print_string ".";
            print_newline ()
            end
      done
    | _ ->
      print_string "Usage: stats <filename>";
      print_newline ()
    end
with
  e ->
  print_string "An error occurred: ";
  print_string (Printexc.to_string e);
  print_newline ();
  exit 1
```

We can now test our modified program:
```text
$ ocamlc textstat.mli textstat.ml stats.ml -o stats
$ ./stats gregor.txt
Words: 80
Characters: 464
Sentences: 4
Lines: 8
Character frequencies:
	For character ' ' (character number 32) the count is 80.
	For character ',' (character number 44) the count is 6.
	For character '-' (character number 45) the count is 1.
	For character '.' (character number 46) the count is 4.
	For character 'G' (character number 71) the count is 1.
	For character 'H' (character number 72) the count is 2.
	For character 'O' (character number 79) the count is 1.
	For character 'S' (character number 83) the count is 1.
	For character 'T' (character number 84) the count is 1.
	For character 'a' (character number 97) the count is 24.
	For character 'b' (character number 98) the count is 10.
	For character 'c' (character number 99) the count is 6.
	For character 'd' (character number 100) the count is 25.
	For character 'e' (character number 101) the count is 47.
	For character 'f' (character number 102) the count is 13.
	For character 'g' (character number 103) the count is 5.
	For character 'h' (character number 104) the count is 22.
	For character 'i' (character number 105) the count is 30.
	For character 'k' (character number 107) the count is 4.
	For character 'l' (character number 108) the count is 23.
	For character 'm' (character number 109) the count is 15.
	For character 'n' (character number 110) the count is 21.
	For character 'o' (character number 111) the count is 27.
	For character 'p' (character number 112) the count is 3.
	For character 'r' (character number 114) the count is 20.
	For character 's' (character number 115) the count is 24.
	For character 't' (character number 116) the count is 21.
	For character 'u' (character number 117) the count is 6.
	For character 'v' (character number 118) the count is 4.
	For character 'w' (character number 119) the count is 6.
	For character 'y' (character number 121) the count is 10.
	For character 'z' (character number 122) the count is 1.
```

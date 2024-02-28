# Question 13.10

> Choose one of the problems you have identified, and modify our program to fix it.

---

We need to get the word count right.
To this end, we use an additional variable `inword` of type `bool`.
- At the beginning of a line `inword` starts off as `false`.
- Whenever we encounter a non-space character we set `inword` to `true`.
- Whenever we encounter a space character we set `inword` back to `false`.

Along the way we keep count of how often we flipped the value of `inword` from `false` to `true`.
We can extract the required code into its own function:
```ocaml
let word_count line =
  let counter = ref 0 in
  let inword = ref false in
  String.iter
    (fun c ->
      match c with
      | ' ' -> inword := false
      | _ ->
          if not !inword then incr counter;
          inword := true)
    line;
  !counter
```
This function relies on the fact that the characters in `line` are iterated over in order.

We can now incorporate the function `word_count` into `channel_statistics`:
```ocaml
let channel_statistics in_channel =
  ⋮
      characters := !characters + String.length line;
      String.iter
        (fun c ->
          match c with
          '.' | '?' | '!' -> sentences := !sentences + 1
          | _ -> ())
        line;
      words := !words + word_count line;
      String.iter
        (fun c ->
          let i = int_of_char c in
          histogram.(i) <- histogram.(i) + 1)
        line
  ⋮
```
The function `file_statistics` now gives the correct number of words:
```ocaml
# #use "question-13.10.ml";;
val word_count : string -> int = <fun>
val print_histogram : int array -> unit = <fun>
val channel_statistics : in_channel -> unit = <fun>
val file_statistics : string -> unit = <fun>

# file_statistics "gregor.txt";;
There were 8 lines, making up 464 characters with 85 words in 4 sentences.
Character frequencies:
⋮
```

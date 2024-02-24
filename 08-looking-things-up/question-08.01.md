# Question 8.1

> Write a function to determine the number of different keys in a dictionary.

---

We defined dictionaries so that every key appears only once in it.
The number of difference keys is therefore simply the length of the dictionary, when regarded as a list:
```ocaml
let num_keys d =
  length d
```

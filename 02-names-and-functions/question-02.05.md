# Question 2.5

> Write a function `isconsonant` which, given a lower-case character in the range `'a'...'z'`, determines if it is a consonant.

---

We can write the desired function as follows:
```ocaml
let isconsonant c =
  c <> 'a' && c <> 'e' && c <> 'i' && c <> 'o' && c <> 'u'
```

# Question 7.5

> Comment on the merits and demerits of exceptions as a method for dealing with exceptional situations, in contrast to returning a special value to indicate an error (such as `-1` for a function normally returning a positive number).

---

Exceptions add an extra layer of complexity to a programming language.
But it allows one to clearly differentiate between an intended return value and an erroneous one.
Also, there might not be a “special value” available to signal an error.
(Say for example that we have a pseudorandom number generator, for which every `int` is a valid return value.
Then no return value can serve as an error signal.)

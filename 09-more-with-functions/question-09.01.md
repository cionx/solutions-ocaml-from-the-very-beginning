# Question 9.1

> Rewrite the summary paragraph at the end of this chapter for the three argument function `g a b c`.

---

We get the following text:

> The function `g a b c` has type `α → β → γ → δ` which can also be written `α → (β → (γ → δ))`.
> Thus, it takes an argument of type `α` and returns a function of type `β → (γ → δ)` which, when you give it an argument of type `β` returns a function of type `γ → δ` which, when you give it an argument of type `γ` returns something of type `δ`.
> And so, we can apply just one argument to the function `g` (which is called partial application), two arguments to `g`, or apply all three at once.
> When we write let `g a b c = ...` this is just shorthand for `let g = fun a -> fun b -> fun c -> ...`.


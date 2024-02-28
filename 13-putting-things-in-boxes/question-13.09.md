# Question 13.9

> Comment on the accuracy of our character, word, line, and sentence statistics in the case of our example paragraph.
> What about in general?

---

The number of words is not counted correctly.
This is due to two reasons:
- In each line there is one more word than consecutive blocks of spaces.
- After each period, except for the ones at the end of lines, there are two spaces instead of the usual one.

Indeed, using the Unix command `wc` reveals that `gregor.txt` actually contains 85 words, whereas our current program counts only 80 words.
This difference happens as follows:
1. We have a total of $85$ words.
2. In each of the $8$ lines we are counting one word too little.
   This results in a count of $85 - 8 = 77$ words.
3. After three of the periods we have two spaces, leading to an additional miscount of $3$ words.
   This gives the total of $77 + 3 = 80$ words.

These problems are not unique to the example paragraph, but will occur with every text.

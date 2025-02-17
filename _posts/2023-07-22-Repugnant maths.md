---
layout: post
title: Repugnant maths
---

<p>{{ page.date | date_to_string }}</p>

In a <a href="https://drstevenkerr.com/2023/03/21/Population-ethics.html" target="_blank">previous post</a>, I discussed population ethics and perhaps its foremost unsolved problem, the repugnant conclusion. To recap, the basic idea is that if you believe a small loss in quality of life for a population can be compensated by adding some number of people with lives worth living, then applying the same reasoning repeatedly leads to the conclusion that there is some enormous number of people all leading lives barely worth living that would be preferable to e.g. one billion people all living superlative lives. That seems rather unpalatable to most people.

This problem has bamboozled philosphers for almost four decades, and single-handedly stymied any real progress in the field. Which is a rather puzzling state of affairs to me, since my initial reaction was that the solution is trivially easy. What, exactly, is stopping us from holding that there is no number of lives that are marginally worth living that would be better than the billion people in blissful content? 

<h3>  Not so fast, Mr non-philosphy-man </h3> 

So it turns out philosphers have thought about that already, and raised objections that in many quarters have been perceived as 'fatal'. You can find a summary of the problem, and issues with various proposed solutions <a href="https://plato.stanford.edu/entries/repugnant-conclusion/" target="_blank">here</a>. Of particular relevance is <a href="https://plato.stanford.edu/entries/repugnant-conclusion/#QueWayWeComMeaWel" target="_blank">section 2.2</a>, which explains, with references, why apparently my proposed solution cannot work. 

In particular, let's suppose we have goods \\( A \\) and \\( B \\) such that no amount of \\( B \\) is better than a single unit of \\( A \\). In the literature, it is sometimes said that \\( A \\) and \\( B \\) are not 'Archimedean equivalent'. Now imagine a sequence of goods starting at \\( B \\) and ending with \\( A \\), such that each good is marginally better than its predecessor. The claim is that there must be a pair of goods that are adjacent in the sequence, such that no amount of the slightly worse good is better than a single unit of the slightly better one. This is used as an argument against the existence of non-Achimedean equivalent goods because it would imply, for example, that one chocolate sundae with the perfect amount of sprinkles is superior to a gazillion (yes you heard right, a gazillion!) chocolate sundaes with a slightly suboptimal amount of sprinkles. 

What pish-tosh is that! Clearly it cannot be!


<h3>  Not so fast, Mr non-maths-man </h3> 

To the mathematically-inclined (i.e., me), it seems fairly clear this objection is nonsense. It would appear to imply that it is not possible to sensibly order an infinite set of objects. And yet clearly we can. What's going on here?

Mr philosphy-man has made an elementary mathematical error, that I will attempt to illustrate by way of metaphor.

Imagine a child that can only count to 10. We ask the child to rank a set of 20 different toys, from least preferred to most preferred, using counting numbers. Once they reach the 11th toy, they become confused; clearly it is better than the 10th toy, but there are no longer any numbers left. The child trusting its maths ability more than the evidence of its own eyes, grudgingly concludes that there cannot be be a toy better than the 10th  toy. 

Now fast forward a decade or two; the child has grown up and is a young adult. They long ago learnt about the number 11 and the folly of their previous reasoning. In fact they have become much more sophisticated; they have attended university where they encountered the idea of a sequence - a collection of set elements indexed by the natural numbers. Equipped with this new knowledge, we ask them to construct a sequence of every possible real quantity of money they might be the recipient of in order of desirability, starting with least desirable. They try map every real number onto a distinct natural number, and quickly discover that they run out of natural numbers before they have even covered all quantities of money between 0 and 1 pounds. Cheerfully, they proclaim there is no quantity of money that would be better than any quantity not yet assigned to the sequence.

This is analogous to reasoning presented by our esteemed colleague, Mr philosophy-man. Turns out that all that has happened is that he has run out of numbers. But that doesn't mean the tectonic plates of reality must shift around him; it just means that he needs to take a few more maths classes!

<h3>  Ordinal numbers</h3> 

This particular problem was solved more than a century ago by <a href="https://en.wikipedia.org/wiki/Georg_Cantor" target="_blank">Georg Cantor</a>, and developed further by e.g.
<a href="https://en.wikipedia.org/wiki/John_von_Neumann" target="_blank">John von Neumann</a>. The upshot is that if you want to order infinite sets, then you're going to need 
<a href="https://en.wikipedia.org/wiki/Ordinal_number" target="_blank">ordinal numbers</a>. These include numbers that are larger than any integer. Again, allow me to illustate with an example.

Alice likes apples and oranges. She always prefers a larger number of apples/oranges to a smaller number. However, she likes apples more than oranges, to the extent that there is no number of oranges that she would prefer to even a single apple. We might try represent her preferences using numbers, by assigning 1 to the bundle consisting of 1 orange, the number 2 to 2 oranges, etc. 

However, if we limit ourselves to the natural numbers, we immediately run into a problem. The bundle consisting of a single apple cannot be assigned a natural number in a way that respects Alice's preferences. Whichever number it is assigned, there is always a larger natural number available, which would incorrectly imply that there is some number of oranges Alice would prefer to one apple. 

The correct way to resolve this is simply to define an abstract number, called \\( \omega \\), that is larger than any natural number. Then we assign \\( \omega \\) to the bundle consisting of 1 apple. For 1 apple and 1 orange, we assign \\( \omega + 1\\), and so on. \\( \omega \\) is called the first infinite ordinal number. This construction can be made rigorous, and is foundational in set theory, which underpins all of mathematics.

Once you figure out that you need ordinal numbers, then Mr philosphy-man's problem evaporates completely. We can now place \\( B \\) and \\( A \\) in a <b>transfinite sequence</b>, where they are separated by an infinite number of incremental improvements. And if, for example, we assign 1 to \\( B \\) and \\( \omega \\) to \\( A \\), then there are no two adjacent elements that are non-Archimedean equivalent, because \\( \omega \\) <b>does not have a predecessor!</b> That is because for any candidate natural number that might be its predecessor, there is always a larger natural number in between.

If you wish to read more about this, including more mathematical detail than you probably want, you should check out my recent paper <a href="https://philpapers.org/archive/KERTRC-3.pdf" target="_blank">here</a>.

<h3>  What to make of this? </h3> 

Perhaps the first take away from all of this is to not put much truck in philosphers, no matter how many degrees and professorships they have from Oxbridge or the Ivy league. This problem has dumbfounded the entire field for several decades, and it all rests on some bad maths. A normal person would not even perceive what the problem is exactly. It turns out that a very fancy and expensive education is a precondition for wasting your time on esoteric matters such as these.

More seriously, I am quite dismayed by all of this. In particular because there are people who take such ideas seriously enough that they're effectively willing to bet millions of dollars on them, directing funds towards causes that their moral calculus has led them to believe are the best uses of money. It ceases to be a laughing matter when there are serious real world consequences at stake.

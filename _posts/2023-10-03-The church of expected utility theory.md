---
layout: post
title: The church of expected utility theory
---

<p>{{ page.date | date_to_string }}</p>



<h3>  What is expected utility theory? </h3> 

Expected utility theory was first influentially expounded by Swiss mathematician <a href="https://en.wikipedia.org/wiki/Daniel_Bernoulli" target="_blank"> Daniel Bernoulli</a> in the 1700s. It seeks to answer the question of how to weigh up alternatives that are uncertain. For example, say I gave you the option of \\( £100 \\), or a bet consisting of a \\( 50-50 \\) chance of receiving \\( £250 \\), how should you choose? While it may seem easy to answer a single question like this, it turns out that building a general framework for how to make such decisions is not so easy, and if you proceed naively you can easily come a cropper.

Bernoulli's basic idea is that you should assign a number to how good each possible alternative is, multiply it by the probability that alternative will actually happen, and sum it all up. The result is called 'expected utility', and the theory instructs us to maximise it. In my example, let's say the utility of a quanity of money is equal to the quantity of money itself. Then the expected utility of the certain \\( £100 \\) is \\(  1 \times 100 = 100\\), while the expected utility of the bet is 

$$ 0.5 \times 0 + 0.5 \times 250 = 125,$$

In this example, the bet comes out on top. However, there is no reason we have to assign utility to be equal to the quantity of money received. Maybe the benefit we derive from receiving \\( £250 \\) is less than twice the benefit we would get from receiving \\( £100 \\). In this case, expected utility theory would instruct us to go for the sure \\( £100 \\).


<h3>  The von Neumann-Morgenstern utility theorem </h3> 

How do we know that this way of evaluating uncertain prospects is sensible? Well, the theory got a major boost from a rather striking result proved by John von Neumann and Oskar Morgenstern in 1947. They showed that a decision-maker who behaves in accordance with four seemingly very reasonable axioms <i>must</i> be an expected utility maximiser. What are these axioms?

Let's first define \\( \succeq \\) to mean 'at least as good as'. We will call an uncertain prospect a <i>lottery</i>. We may also consider 'compound lotteries', which can involve some probability of receiving a good which is itself a lottery. For example, I might offer you a $$50-50$$ chance of taking the bet above. A compound lottery consisting of receiving lottery \\( L \\) with probability \\( p \\) will be denoted by \\( pL \\). 

The axioms are as follows:

 <b>1. Completeness.</b> For any two lotteries \\( L \\) and \\( M \\), we have either \\( L \succeq M \\) or \\( M \succeq L \\) 

This is just saying that in any comparison between two lotteries, one is always at least as good as the other - there are no lotteries that are 'incomparable'.

 <b>2. Transitivity.</b> If there are three lotteries \\( L \\), \\( M \\) and \\( N \\), with \\( L \succeq M \succeq N \\), then \\( L \succeq N \\).

This means that you can't have rock-paper-scissor-like preferences. It is often said that someone who has preferences like this could be used as a 'money pump', because they will presumably pay some non-zero amount of money to go around in a cycle that ends where they started. They can be taken on that ride ad infinitum.

 <b>3. Continuity.</b> For any three lotteries with \\( L \succeq M \succeq N\\), there is some probability \\( p \\) such that \\( pL + (1-p)N \sim M \\).

Here, the symbol \\( \sim \\) means indifference, or preferring two options equally. The continuity axioms says that we can always 'trade in' utility for probability. For example, you can always be left just as well off as you are now by taking a lottery where you get something better with probability \\( p \\) and something worse with probablity \\((1-p)\\).

 <b>4. Independence.</b> For any lottery \\( M \\) and any probability \\( p \\), \\( L \succeq N \\) if and only if \\( pL + (1-p)M \succeq  pN + (1-p)M \\).

 Notice that the \\( (1-p)M \\) appears on both sides of the equation. This says that tacking on some other lottery that you receive no matter what does not affect your preferences.

 There you have it. If you think those four axioms are reasonable, then you sir (or madam) must be an expected utilty maximiser. 


<h3>  Evangelical economics </h3> 

It's hard to overstate how profoundly this theorem has shaped academic economics. There is nary a subfield which does not employ expected utility maximisation as its theoretical workhorse. It has completely dominated economic thinking for almost 80 years, and no doubt will continue to for some time to come.

There have been inevitably been some challenges to its reign, but mostly on the grounds of its limitations as a description of human behaviour. It turns out that humans are quite fickle creatures, and you can get them to behave in ways that violate these axioms. Most prominent among the would-be usurpers is <a href="https://en.wikipedia.org/wiki/Prospect_theory" target="_blank"> prospect theory</a>, but it has failed to really make a dent in the hegemony that expected utility theory has in the field.

However, even ignoring that, almost no one nowadays questions the idea that expected utility theory is an appropriate framework for a 'rational' decision-maker. That is, maybe us lowly humans fail to live up to its lofty mandates, but it is still the correct ideal we should be shooting for, even if we are too flawed to hit the target.

I beg to differ. 

<h3>  What's your problem, Steven?</h3> 

My problems are two-fold, my simple-minded interlocutor.

I find it hard to take issues with axioms <b>1.</b> and <b>4.</b>, so I will leave them unbesmirched. It's the other two that stick in my craw.

<h4> Transitivity </h4> 
I know what you're thinking. How can I possibly take issue with transitivity. Am I some sort of masochist who likes being used as a money pump?

No, I am not. 

Let me give you a simple example of a hapless protagonist, let's call him Dave, who is an unwitting money pump. Imagine Dave is hiring for a job, and he ranks candidates on three separate criteria: Intelligence, experience, and hotness (Dave may be getting a call from HR soon). Each candidate has a numerical score along each dimension. However, Dave, being the pitiable stooge that he is, cannot distinguish between differences of less than 4 units along any dimension. He is presented with the following three candidates:

| <u><strong>Name </strong></u> | <u><strong>Intelligence </strong></u> | <u><strong>Experience </strong></u> | <u><strong>Hotness </strong></u> |
|:-------:|:--------:|:-----:|:-------:|
| Alice   | 6 | 0 | 0|
| Bob     | 0 | 3 | 3|
| Carol   | 3 | 6 |-3| 

 <b>Alice beats Bob</b>  via the intellgence dimension (they do not differ by more than 4 along the other two dimensions). <br>
Similarly, <b>Bob beats Carol</b> via the hotness dimension. <br>
And <b>Carol beats Alice</b> along the experience dimension. <br>

There you have it. Dave is doomed to embark upon an ill-fated, infinite loop of increasing salary offers until he finds himself in the mother of all debt holes. And all because of his failure to notice differences of less than 4. What a twonk!

Of course Dave hasn't really behaved in any way that should be considered irrational. We can imagine that a difference of 4 lies beyond the limits of human, or even machine-aided perception - it can be as tiny a difference as you want. We can also imagine that Dave is not a complete moron and notices he is being money-pumped before handing over his life-savings.

So much for transitivity. Next up:

<h4> Continuity </h4> 

 I will take this one down by way of the following hypothetical.

Imagine I offer you a lottery consisting of a marginal improvement to your current well-being (perhaps a gentle pat on the head) with probability \\( p \\), but otherwise you will be crucified. Expected utility theory dictates that there must be some non-zero chance of crucifixion such that you would be indifferent between taking this bet and continuing on your merry way. That's right - anything less would be 'irrational'.

I don't know about you, but I completely reject that. Ain't no head pat in the universe good enough that I'm willing to risk crucifixion for. 

More broadly speaking, there is an issue for expected utiltity theory whenever there are more distinctly ranked alternatives than there are real numbers. From axiom  <b>3.</b> above, imagine that there are more incremental improvements between \\( L \\) and \\( N \\) than there are numbers between 0 and 1. Then it must be possible to map every single one of these alternatives \\( M \\) onto a distinct number \\( p \\) between 0 and 1 such that \\( pL + (1-p)N \sim M\\). But it's not at all difficult to come up with examples where you run out of numbers. For example, imagine my preferences are such that there is no amount of tea that I would prefer over a minute of experiencing the euphoria of being deeply in love. Such a preference would run afoul of Mr von Neumann and Mr Morgenstern.


<h4> Whence expected utility theory? </h4> 

If its flaws are so obvious, why does expected utility theory continue to have such a strangehold over the academy?

The main reason is that it's simple, and it allows economists to feel all fancy because they get to use elementary calculus. If there is an expected utility function, then you can differentiate it to find stationary points. Put a few layers of makeup on that, and BAM, you have got yourself a paper sunshine. 

Unforunately the reality of life is a little harder to grapple with than that.

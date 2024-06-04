---
layout: post
title: The St Petersburg paradox
---

<p>{{ page.date | date_to_string }}</p>

<h3> The St Petersburg game </h3> 
Imagine I offer you the chance to play the following game. The pot starts at \\( \$ 2\\). I flip a coin repeatedly. Each time it comes up tails, the pot doubles. The first time a heads appears, the game ends and you leave with the pot. How much would you be willing to pay to play this game?

If you're anything like a reasonable person, or <a href="https://en.wikipedia.org/wiki/Daniel_Bernoulli" target="_blank"> Daniel Bernoulli</a>, you'd be unlikely to pay more than \\( \$ 20\\). At that price, you'd need at least 4 consecutive tails to make a profit. 

According to some people, this would put you at odds with 300 years of conventional wisdom regarding uncertain outcomes. 'Rational' individuals are supposed to maximise expected value, and the expected value of this bet goes to infinity as the number of potential coin flips becomes large,

$$
\sum_{i=1}^n = \frac{1}{2} 2 + \frac{1}{4} 4 + \frac{1}{8} 8 + ... \frac{1}{2^n} 2^n \label{st petersburg}\\
= n.
$$

You should therefore be willing to hand over all your earthly possessions for a single shot at this game.

The tension between these two prescriptions is known as the <a href="https://en.wikipedia.org/wiki/ADM_formalism](https://en.wikipedia.org/wiki/St._Petersburg_paradox)" target="_blank"> St Petersburg paradox</a>.


<h3> What is rational, anyway? </h3> 

Perhaps the main reason why it is nowadays believed that a 'rational' decision maker must maximise expected value or utility is the von Neumann Morgenstern (hereafter vNM) utility theorem, which I have written about <a href="https://drstevenkerr.com/2023/10/03/The-church-of-expected-utility-theory.html" target="_blank"> before</a>. To recap; the theorem says that anyone who behaves in accordance with four seemingly quite reasonable axioms must be an expected utility maximiser. They are as follows:

 <b>1. Completeness.</b> For any two lotteries \\( L \\) and \\( M \\), we have either \\( L \succeq M \\) or \\( M \succeq L \\) 

 <b>2. Transitivity.</b> If there are three lotteries \\( L \\), \\( M \\) and \\( N \\), with \\( L \succeq M \succeq N \\), then \\( L \succeq N \\).

 <b>3. Continuity.</b> For any three lotteries with \\( L \succeq M \succeq N\\), there is some probability \\( p \\) such that \\( pL + (1-p)N \sim M \\).

 <b>4. Independence.</b> For any lottery \\( M \\) and any probability \\( p \\), \\( L \succeq N \\) if and only if \\( pL + (1-p)M \succeq  pN + (1-p)M \\).

Inquiring minds might wonder what exactly a lottery is. In von Neumann and Morgenstern's original formulation, it's actually a little bit vague. Subsequent work however clarified that lotteries are elements of some set of probability measures over a measurable space. 

Another important but subtle point to note is that it is only proved that there exists a function over lotteries with the following property

$$
U(pL + (1-p) M) = p U(L) + (1-p)U(M).
$$

This implies that, for example, if you start off with an assignment of utilities to sure outcomes, then this can only be extended to lotteries where a finite number of outcomes have non-zero probability (density). These are sometimes called simple probability measures/lotteries. Later work extended the original vNM theorem to more general spaces of lotteries, although additional axioms need to be introduced.

The final subtlety to notice is that the vNM theorem, as well as various extensions, only demonstrate that for any individual who behaves in accordance with the above axioms, there is a <em>bounded</em> utility function over sure outcomes such that the expected utility represents their preferences over lotteries. Notice my emphasis on the word bounded.


<h3> Resolving the paradox </h3> 

Daniel Bernoulli resolved the original form of the paradox shortly after it was first posed by his brother Nicolaus in 1713, and long before anyone knew about the vNM theorem. He noticed that the unbounded quantities of money you might receive in the St Petersburg game do not give unbounded 'happiness', or utility. If you restrict to bounded utilities, the paradox evaporates.

In the early 1900s, a newer form of the paradox appeared in which the payoffs are instead taken to be 'utilities' rather than money. The idea is that 'pleasure' can be measured in units in much the same way as physical quantities like distance can be measured in metres, and we can simply take a modified version of the original St Petersburg game in which the payoffs are units of pleasure that can become arbitrarily large. In some circles, this newer form of the paradox is still considered unsolved.


<h3> The St Petersburg paradox 2.0 </h3> 

I have to say I'm fairly unimpressed with the modern incaration of the St Petersburg paradox. A careful reading of the vNM theorem and extensions indicates that there is absolutely no obligation for an individual who acts in accordance with its axioms to assign infinite utility to the St Petersburg game. The theorems simply guarantee that there is a <em>bounded</em> utility function that represents their preferences over sure outcomes. That utility function needn't have an interpretation as measuring units of pleasure - it simply represents an ordering of outcomes. So, for example, if outcome \\( A \\) is assigned the value \\( 1 \\) and outcome \\( B \\) is assigned the value \\( 2 \\), it does not mean that \\( B \\) gives 'twice as much pleasure' as \\( A \\). It simply means that \\( B \\) is preferred to \\( A \\). 

If you insist on an unbounded utility function that has an interpretation in terms of 'units of pleasure', then you are outwith the scope of the vNM theorem. I would suggest you're probably outwith the scope of reality too. If it is even possible to sensibly measure units of pleasure, I would hazard that it's not possible for a person, or a finite collection of people, to experience an infinite number of them. In just the same way that it's not possible for anyone to travel an infinite distance or live for an infinite time. Infinities like this don't occur in nature. The revamped St Petersburg paradox is asking us to make sense of something that isn't physically possible. At which point we are completely justified in ignoring it, for the same reason that I don't spend much time working out how to consistently value fairy dust or unicorn horns.


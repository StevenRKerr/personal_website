---
layout: post
title: What is vaccine effectiveness?
---

<p>{{ page.date | date_to_string }}</p>

There have been interesting reports from Public Health Scotland that COVID infection rates amongst the unvaccinated have been consistently lower compared to those who have had one or two doses of vaccine since early December 2021, though higher compared to those with a booster dose. See a news story <a href="https://www.heraldscotland.com/news/19843315.covid-scotland-case-rates-lowest-unvaccinated-double-jabbed-elderly-drive-rise-hospital-admissions/" target="_blank">here</a>, based on the original report <a href="https://publichealthscotland.scot/media/11089/22-01-12-covid19-winter_publication_report.pdf" target="_blank">here</a>. I believe this has led many people to question vaccine effectiveness.

<h3>  What is vaccine effectiveness? </h3>

If you're maths averse, you might want to scroll straight down to the "What does it mean?" section. It's not that bad though, I promise.

There are many quantities that get called "vaccine effectiveness" that are mathematically and conceptually distinct. This is a little bit unfortunate, because it makes it diffucult to compare them. Throughout this article, I will assume we are talking about vaccine effectiveness against infection, but we may also be interested in effectiveness against hospitalistion, death and other outcomes.

<h4>  Risk ratio </h4>

Risk ratios are perhaps the most intuitive way  of defining vaccine effectiveness. It really is just the probability of a vaccinated person being infected with COVID, divided by the probability of an unvaccinated person being infected with COVID. A risk ratio less than one indicates some vaccine effectiveness against infection. This motivates our first definition of vaccine effectiveness,

$$ \mathrm{VE} = 1-  \mathrm{Risk \; ratio}.$$


<h4>  Rate ratio </h4>

The rate at which vaccinated/unvaccinated people get infected can be modelled using <a href="https://en.wikipedia.org/wiki/Poisson_regression" target="_blank">Poisson regression</a>. Dividing the rate for vaccinated people by the rate for unvaccinated people gives the rate ratio, which leads to our second definition of vaccine effectiveness,

$$ \mathrm{VE} = 1-  \mathrm{Rate \; ratio}.$$

Rate ratios and risk ratios should be approximately equivalent over the same time horizon.


<h4>  Hazard ratio </h4>

The hazard rate is the instantaneous value of the rate. So, for example, if a car spends one hour doing 50mph and one hour doing 100mph, its average speed would be \\( \frac{100 + 50}{2} = 75 \\), whereas its instantenous speed would initially be 50 and then 100. Hazard ratios can be estimated using <a href="https://en.wikipedia.org/wiki/Proportional_hazards_model" target="_blank">proportional hazards models</a>. This gives our third definition of vaccine effectiveness,

$$ \mathrm{VE} = 1-  \mathrm{Hazard \; ratio}.$$

Hazard ratios and risk ratios should be aproximately equivalent if the hazard rate doesn't vary much over the study period.


<h4>  Odds ratio </h4>

The odds of an event is the probability of it occurring \\( p \\), divided by the probability of it not occurring \\(1- p \\),

$$ \mathrm{Odds} = \frac{p}{1-p}.$$

An odds ratio is dividing the odds of one event, by the odds of a second event,

$$ \mathrm{OR} = \frac{ \mathrm{Odds}_1 }{ \mathrm{Odds}_2 }.$$

 So, we might divide the odds of being infected with COVID if you have recived the vaccine, by the odds of being infected with COVID if you haven't received the vaccine. If this quantity is less than one, it indicates that those who received the vaccine are less likely to be infected than those who didn't. Odds ratios can be modelled using <a href="https://en.wikipedia.org/wiki/Logistic_regression" target="_blank">logistic regression</a>. This gives our fourth definition of vaccine effectiveness,

 $$ \mathrm{VE} = 1- \mathrm{OR}.$$

 Odds ratios are approximately equal to risk ratios for low probability events. This follows from the first order Taylor expansion of the odds,

 $$ \mathrm{Odds} = \frac{p}{1-p} \simeq p.$$


<h3>  Why so many different measures of vaccine effectiveness? </h3>

At first glance, it might seem odd that we use so many different measures of vaccine effectivenss, especially given that under many circumstances they are approximately equal. Why not just one? The answer is that there are a number of statistical models/techniques that can be used to try and estimate vaccine effectiveness, and they each have various merits depending on the assumptions one thinks are reasonable to make, and the data that one has available.  

<h3>  What does it mean? </h3>

That's a fine question. I believe that many people, when reading a headline of e.g. \\( 90 \% \\) effectiveness, will take that to mean something like "there is a \\( 90 \% \\) chance the vaccine will prevent me from getting COVID". Which is of course, not at all what it means.

A more sophisticated take would be "The vaccine will reduce my chances of catching COVID by a factor of 20". This is better, but still not quite right. The main issue is that it lacks a time horizon. What period of time does this statement apply to? 

News reports on studies have vaccine effectiveness have tended to report peak effectiveness over a certain unit of time. For example, in our <a href="https://doi.org/10.1016/S0140-6736(21)00677-2 " target="_blank">study of vaccine effectiveness</a>, we calculated vaccine effectiveness by week, and the media widely reported the maximum value. This can cause confusion.

<h3>  An example </h3>

Let's assume that the probability of an unvaccinated person being infected with COVID in a given week is \\( 10 \% \\) and constant. Let's assume vaccine effectiveness stays at roughly the peak level that we found in our paper of \\( 90 \% \\).  What is the probability of being infected with COVID relative to an unvaccinated person over, say, a 12 week period?

This is like flipping a biased coin each week, and calculating the probability of flipping 12 "not infected" in a row. Doing this calculation (I'll spare you the details), you get a reduction in risk of \\( 84 \% \\).

Pretty good. However, we know that COVID vaccines wane in effectiveness relatively quickly. What happens if we take that into account?

Let's assume that vaccine effectiveness starts out at \\( 90 \% \\) and decreases by \\( 5 \% \\) each week (this is a decent approximation to what we actually see with COVID vaccines). Then you get a reduction in risk of \\(49 \% \\). Doing the same calculation over 16 weeks, you get a reduction in risk of \\(33 \% \\). 

 This is very much a 'back of the envelope' calculation, and does not take account of the fact that background infection rates are dynamic and dependent upon levels of immunity amongst the population. Nonetheless I do think it hints at some interesting questions about what the proper aim of vaccination is in the midst of a pandemic. 











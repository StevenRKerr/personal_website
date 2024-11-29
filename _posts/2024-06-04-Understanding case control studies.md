---
layout: post
title: Understanding case control studies
---

<p>{{ page.date | date_to_string }}</p>

Case control studies are a staple in the epidemiologist's toolbox. The basic idea idea is that instead of carrying out an analysis on a random sample of a population, you instead sample from the population conditional on occurrence of an outcome of interest. Typically this will involve selecting all individuals who have the outcome (the cases), and only some people who don't have the outcome (the controls). The motivation for doing this is that when the outcome is rare, most of the precision in estimates is driven by the cases, and adding a large number of controls often has little effect. Case control studies can thus be more efficient in terms of data collection/processing compared to e.g. a cohort study.

Case control studies have been instrumental in establishing many useful research findings, such as the link between smoking tobacco and lung cancer. Despite this, the exact workings of case control studies are poorly understood by many professionals who use them routinely. I recently co-authored an article in the Journal of Global Health with world-leading statistician and epidemiologist <a href="https://en.wikipedia.org/wiki/Sander_Greenland" target="_blank"> Sander Greenland</a> that attempts to clear up the confusion that persists over this study design.<a href="#1">[1]</a>

<h3> Outcome and exposure odds ratios </h3> 

Consider the following table that is basically a stock character in epidemiology text books.

| | <u><strong>Exposed </strong></u> | <u><strong> Unexposed </strong></u> |
|----:|:---:|:---:|
| <u><strong>Outcome event </strong></u> | a | b |
| <u><strong>No outcome event </strong></u> | c | d |

The entry in each cell denotes the number of people in each exposure/outcome category in a closed cohort. Using this table, we get

$$
\begin{align}
\mathrm{Odds}(O=1 | E=1) &= \frac{ \left(\frac{a}{a+c} \right) }{ \left(\frac{c}{a+c} \right) } = \frac{a}{c} \label{odds_e} \tag{1}\\
& \\
\mathrm{Odds}(O=1 | E=0) &= \frac{ \left( \frac{b}{b+d} \right) }{ \left( \frac{d}{b+d}  \right) } = \frac{b}{d}, \label{odds_u} \tag{2}
\end{align}
$$

where \\( O \\) and \\( E \\) are binary outcome and exposure indicator variables respectively. This gives the outcome odds ratio as 

$$
\begin{align}
OR  = \frac{\mathrm{Odds} (O=1 \| E=1)}{\mathrm{Odds} (O=1 \| E=0) } = \frac{ad}{bc} \tag{3}.
\end{align}
$$

A fact that is often made much of in epidemiology text books is that if you repeat this calculation but instead looking at the odds ratio of <em>exposure</em> in cases compared to controls, you get exactly the same answer, \\( \frac{ad}{bc} \\). In fact, I have sometimes seen a stronger claim that case control studies <em>cannot</em> directly estimate the outcome odds ratio, but only the exposure odds ratio. 

The idea behind this claim appears to be that in a case-control study, the dataset typically contains all the cases, but only some of the controls. Hence we do not know \\( c \\) or \\( d \\), and cannot estimate \\( \ref{odds_e} \\) or \\( \ref{odds_u} \\). On the other hand, when calculating the odds ratio of exposure, the probability of exposure among those who had the event and those who did not have the event can be estimated.

This is, however, completely immaterial. The ratio \\( \frac{d}{c} \\) can be estimated by dividing the number of people who are unexposed by the number exposed among the controls. Therefore the quantity \\( \frac{ad}{bc} \\) can also be estimated from the case control sample even though we don't know \\( c \\) or \\( d \\). It's irrelevant whether you want to call it an outcome odds ratio or an exposure odds ratio. 

Unfortunately, this has generated some confusion. While the outcome and exposure odds ratios are theoretically equal, one would typically estimate them using logistic models for \\(  P(O = o \; \| \; E=e, X=x) \\) and \\(  P(E = e \; \| \; O=o, X=x) \\). These are related by Bayes theorem,

$$
\begin{align}
P(O = o \; | \; E=e, X=x) = \frac{  P(E = e \; | \; O=o, X=x) P(O=o, X=x) }{ P(E=e, X=x) }.  \label{bayes} \tag{4}
\end{align}
$$

It is extremely unlikely that logistic models will be consistent with this relationship because, as we all know, <a href="https://en.wikipedia.org/wiki/All_models_are_wrong" target="_blank"> all models are wrong</a>. Thus outcome and exposure odds ratios estimated in this way will in general not be the same. The choice of whether to take outcome or exposure to be the dependent variable in principle should be done on the basic of which model is better. In practice, there is an established tradition of the outcome being the dependent variable. 

<h3> Odds ratios or rate ratios? </h3> 

The second major source of confusion in case control studies is whether one should report an odds ratio or a rate ratio. On the face of it, you would think an odds ratio since case control studies typically use logistic regression. However, this odds ratio is an estimator for the parameter of a data generating process that includes the sampling we carried out for cases and controls. In other words, it is not an estimator for the odds ratio in the population.

On the other hand, there are some circumstances under which the odds ratio in a case control study is equal to the rate ratio in the population. These conditions are laid out in our paper <a href="#1"> [1]</a>, and also in Sander's paper from the early 80s <a href="#2"> [2]</a>. In particular, this conclusion holds if the analysis uses risk set sampling to match cases with controls, the model includes strata terms for matched cases and controls, and the instantaneous rate ratio is constant over the study period. Risk set sampling means controls are randomly sampled from everyone who has not had an event at the time the of outcome for the index case. Proof of this can be found in <a href="#2"> [2]</a>. 

Despite the fact that this has been known for over 50 years, there is still a great deal of confusion. In particular, there are a few papers out there that incorrectly claim that risk set sampling alone is sufficent for an odds ratio in the data generating process of a case control study to be equal to a rate ratio in the population. 

Ultimately, it is a matter of 'taste' whether to report an odds ratio or rate ratio. Typically the entire motivation for estimating an odds ratio in a case control study is because it is also an estimator of a population parameter of interest - the rate ratio. On the other hand, it is not incorrect to report an odds ratio. What must be understood is that the odds ratio applies to a data generating process that includes the case control sampling, whereas the rate ratio applies to a data generating process for the whole population.


<h3> Re-using data points? </h3> 

A final confusion that arises is that in risk set sampling, you can end up having the same individual as both a case and a control. This can happen if they are matched to another case at a time before they have had the event themselves. Surely that's not allowed?

This can be resolved by understanding that the unit of observation in a case-control study is not an indivdual, but an individual <em>at a particular instant in time</em>. In other words, it's as if each individual has a row in the data for every instant of follow-up time. That will generally result in an infinite number of observations, but the case control study only ever uses a finite subset of them. If an individual ends up having several of their observations included in the case control study, these should be understood as independent data points - or at least data points that are 'sufficiently independent' to satisfy the modelling assumptions that are made.


<h3>  References </h3> 

<span id="1"> <b>1. </b> </span> Kerr S, Greenland S, Rudan I et al. Understanding and reporting odds ratios as rate ratio estimates in case-control studies. Hournal of global health, 2023.

<span id="2"> <b>2. </b> </span> Greenland S, Thomas DC. On the need for the rare disease assumption in case-control studies. Am J Epidemiol. 1982;116:547-53. Erratum in: Am J Epidemiol 1990 Jun;131(6): 1102.




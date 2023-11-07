---
layout: post
title: In defence of linear regression
---

<p>{{ page.date | date_to_string }}</p>

<h3>  What is linear regression? </h3> 

It's one of the first major topics you learn about when taking statistics class. In essence, it allows you to model the mean of a response variable \\( y_i \\) as depending on some explanatory variables \\( x_i \\), where the subscript \\( i = 1...n \\) labels different observations. More concretely, 

$$ y = X \beta + \epsilon, \tag{1} $$

where \\( y \\) is an \\( n \\)-dimensional vector whose elements are \\( y_i \\), \\( X \\) is an \\( n \times k \\) matrix whose rows are \\( x_i \\), and \\( \beta \\) is a \\( k\\)-dimensional vector of parameters to be estimated. If we assume that

$$ \mathbb{E}[\epsilon \;|\; X] = 0, \tag{2} $$

then

$$ \mathbb{E}[y \;|\; X] = \mathbb{E}[X \beta \; | \; X], \tag{3} \label{ols}$$

Multiplying both sides by the <a href="https://en.wikipedia.org/wiki/Moore%E2%80%93Penrose_inverse" target="_blank">Moore-Penrose pseudoinverse</a> of \\( X \\) gives

$$ \beta = \mathbb{E}[ (X^T X)^{-1} X^T y \;|\; X]. \tag{4} $$

Finally, replacing the expected value with its sample counterpart gives the famous ordinary least squares formula

$$ \hat{\beta} = (X^T X)^{-1} X^T y. \tag{5} $$

This is the most simple and instructive derivation of this equation you'll ever see, if I do say so myself. And I do, in fact, say so myself.

<h3>  What if you have a limited dependant variable?</h3> 

So, armed with the above formula, you can go about modelling all sorts of stuff. The technical assumptions being made are fairly unrestrictive. There is, inter alia, no assumption that \\( \epsilon \\) is normally distributed, as I have discovered is depressingly commonly believed even amongst professional statisticians (but that's a topic for another day).

Ah but what if you want to model a process where, for example, the dependent variable \\( y_i \\) is binary, taking only values \\( 0 \\) or \\( 1\\), you say? The conventional wisdom is that you should not use linear regression, but a different model such as logistic regression. But a conditional probability is an expected value, which is exactly the sort of thing linear regression is meant to model. So why not use linear regression?

<h3>  Objection 1: Out of bounds values</h3>

You may have noticed that in equation \\( \ref{ols} \\), there is nothing stopping the modelled mean from being less than \\( 0 \\) or greater than \\( 1 \\). \\( X \\) and \\( \beta \\) might just conspire to make it so. Clearly that cannot actually be, given that \\( y_i \in \\{ 0, 1 \\}\\). This problem cannot occur in logistic regression, because the functional dependence of \\( \mathbb{E}[y \; \| \; X] \\) on \\( X \\) and \\( \beta \\) ensures that the predicted values are always in  \\( [0, 1] \\).

To which I respond: if your model predicts a mean that is impossible by definition, then either your model specification is bad, or your sample size is too small. If you didn't have either of those issues, then linear regression would be just dandy. It's not the estimation method, it's you. 

In fact, you might even consider the foregoing an asset - predicted values that are out of bounds is a clear diagnostic tool you can use to detect issues with model specification and/or sample size.

<h3>  Objection 2: Heteroscedasticity </h3>

So usually we not only want to estimate \\( \beta \\), but also its variance, in order to have an idea of what level of confidence we can reasonably have in \\( \hat{\beta}\\). The most straightforward way of doing this makes the following assumption:

$$ \mathrm{Var}[\epsilon_i \; | \; X] = \sigma^2 \;\; \forall i. \tag{6}$$

This goes under the name 'homoscedasticity', and means the variance of the residuals is independent of \\( X \\). It turns out that if you fit the model using linear regression, this assumption cannot possible be satisifed. The reason is that you are modelling a Bernoulli variable where the probability of a \\( 1 \\) is given by 

$$ p_i := \mathbb{E}[y_i \; | \; X_i]. \tag{7}$$


The variance of the Bernoulli variable is \\( p_i(1-p_i) \\), which in general will depend on \\( X \\), thus violating the homoscedasticity assumption.

Fortunately, there is a simple <a href="https://en.wikipedia.org/wiki/Heteroskedasticity-consistent_standard_errors" target="_blank">estimator</a> for the variance of \\( \beta \\) that is 'robust' to heteroscedasticity, that handles this issue more than adequately.

<h3>  What's the real reason you're not using linear regression? </h3>

I am of course, not the first person to point any of this out. Otter Hellevik put forward the case nicely in this <a href="https://link.springer.com/article/10.1007/s11135-007-9077-3" target="_blank">paper</a> from 2009, and others even before him. There are also other advantages that linear regression has over e.g. logistic regression. Interpretability for one - the coefficient in a linear regression will tell you the number of percentage points your risk for the outcome goes up as the associated independent variable increases by \\(1\\), whereas the coefficient in logistic regression will tell you an odds ratio, which is a lot less intuituive. I should also mention that similar arguments work for Poisson regression. There you are just modelling a rate, which is the expectation of a discrete random variable divided by time - something that ordinary least squares is also perfectly suited for.

Given all this, why does it remain more or less unthinkable in many fields for researchers to use linear regression in cases of a limited dependant variable?

I think one reason is that it's a 'zero-thought' method. If you use linear regression when e.g. the dependant variable is binary, it just gives one more way that your modelling can definitively be said to have failed. No such thing will happen if you fit a logistic regression.

It probably also has something to do with the vagaries of history. Maximum likelihood methods are newer than linear regression, and were all the rage at the time. Plus computers have gotten a lot more powerful in recent decades, and often there is very little difference to the end user in fitting maximum likelihood models despite the fact that they are generally more computationally demanding.

One reason this may again become quite relevant, certainly in health data science, is if <a href="https://en.wikipedia.org/wiki/Secure_multi-party_computation" target="_blank">secure multi-party computation</a> methods are adopted and become commonplace. These techniques allow a function to be calculated across multiple private datasets, with zero information sharing. However, nothing is free, and in this case it comes with a significant additional burden in computational complexity. That might make linear regression start to look very attractive again compared to methds that require iterative optimisation methods.








---
layout: post
title: Why do so many statisticians think variables or residuals must be normally distributed in linear regression?
---

<p>{{ page.date | date_to_string }}</p>

In my time working in health science, I have been troubled by the number of times I have encountered statisticians and practitioners of statistics who are absolutely sure that the variables or the residuals in a linear regression should be at least approximately normally distributed, and the model is invalid otherwise.

This idea is completely false. In this post I want to explore why so many working professionals nonetheless subscribe to it.


<h3>  Linear regression </h3> 

When statisticians say a model is 'valid', they usually mean that there is a set of assumptions that are plausibly approximately satisfied, and that are sufficient to guarantee that our parameter estimates converge to their true population values, and that the distribution of the parameter estimates is approximately known (usually normal), as the sample size becomes large. The latter condition allows us to estimate standard errors on effects. There are several slightly different notions of <a href="https://en.wikipedia.org/wiki/Convergence_of_random_variables" target="_blank"> convergence for random variables</a>, but the most commonly used is convergence in probability. An estimator \\( \hat{\beta} \\) that converges in probability to true population value \\( \beta \\) is called <a href="https://en.wikipedia.org/wiki/Consistent_estimatorl" target="_blank"> consistent</a>.

In the following, I will use the this notation: \\( y \\) is an \\( n \\)-dimensional vector whose elements are \\( y_i \\), \\( X \\) is an \\( n \times k \\) matrix whose rows are \\( x_i \\), \\( \beta \\) is a \\( k\\)-dimensional vector of parameters to be estimated, and \\( \epsilon \\) is an \\( n \\)-dimensional vector of residuals whose elements are \\( \epsilon_i \\).

In the linear regression setting, there are standard sets of assumptions that are sufficient to guarantee consistency. Note the plural - there are several. The first version you often learn while studying statistics is the following:

<b>1. Linearity.</b> The data-generating process is of the form \\( y = X \beta + \epsilon \\).

<b>2. Strict exogeneity.</b> \\( \mathbb{E}[\epsilon \; \| \; X] = 0 \\).

<b>3. No multicollinearity.</b> The rank of \\( X \\) is \\( k \\) with probability \\( 1 \\).

<b>4. Conditional normality of residuals.</b> \\(  \epsilon \sim N(0, \sigma^2 I) \\), where \\( I \\) is the \\( n \times n \\) identity matrix.


Note that an explicity normality assumption appears in <b>4</b>. 

However, several of these conditions can be weakened. For example, the following set of conditions is also sufficient:

<b>1. Linearity.</b> The data-generating process is of the form \\( y = X \beta + \epsilon \\).

<b>2'. Ergodic stationarity.</b> The <a href="https://en.wikipedia.org/wiki/Stochastic_process" target="_blank"> stochastic pocess</a> \\( (y_i, x_i) \\) is <a href="https://en.wikipedia.org/wiki/Stationary_process" target="_blank"> stationary</a> and <a href="https://en.wikipedia.org/wiki/Ergodic_process" target="_blank"> ergodic</a>.

<b>3'. Weak exogeneity.</b> \\( \mathbb{E}[\epsilon_i x_i] = 0 \; \forall i \\).

<b>4'. Invertibility.</b> \\( \mathbb{E}[x_i x_i^T ] \\) is invertible.

<b>5'. Central limit theorem (CLT).</b> \\(  \sqrt{n} \left( \frac{1}{n} \sum_{i} x_i \epsilon_i\right) \xrightarrow{d} N(0, \Sigma) \\), where \\( \xrightarrow{d} \\) denotes <a href="https://en.wikipedia.org/wiki/Convergence_of_random_variables#Convergence_in_distribution" target="_blank"> convergence in distribution</a>.

Note here that the explicit normality assumption <b>4</b> can be 'replaced' by <b>4'</b>, which is much weaker and only requires \\( \frac{1}{n} \sum_{i} x_i \epsilon_i \\) to obey a <a href="https://en.wikipedia.org/wiki/Central_limit_theorem" target="_blank"> central limit theorem</a>. The most basic version of the CLT applies to <a href="https://en.wikipedia.org/wiki/Independent_and_identically_distributed_random_variables" target="_blank"> iid</a> random variables, but there are many other versions that weaken those requirements.

In other words, there is no need to assume that either the variables or the residuals in linear regression are normally distributed. 



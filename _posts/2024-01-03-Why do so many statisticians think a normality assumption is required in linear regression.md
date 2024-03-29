---
layout: post
title: Why do so many statisticians think a normality assumption is required in linear regression?
---

<p>{{ page.date | date_to_string }}</p>

In my time working in health science, I have been troubled by the number of times I have encountered statisticians and practitioners of statistics who are absolutely sure that either the variables or residuals in a linear regression must be approximately normally distributed, and the model is invalid otherwise.

This idea is completely false. In this post I want to explore why it is nonetheless so widely believed by professionals in the field.

<h3>  Linear regression </h3> 

When statisticians say a model is 'valid', they usually mean that the model plausibly satisfies some conditions that guarantee 'nice' results. By 'nice', it is usually meant that parameter estimates converge to the true values from the data generating process, and that the distribution of the parameter estimates is known (usually normal), as the sample size becomes large. There are several slightly different notions of <a href="https://en.wikipedia.org/wiki/Convergence_of_random_variables" target="_blank"> convergence for random variables</a>, but the most commonly used is <a href="https://en.wikipedia.org/wiki/Convergence_of_random_variables#Convergence_in_probability" target="_blank"> convergence in probability</a>. An estimator \\( \hat{\beta} \\) that converges in probability to true value \\( \beta \\) is called <a href="https://en.wikipedia.org/wiki/Consistent_estimator" target="_blank"> consistent</a>.

In this post I will use the following notation: \\( y \\) is an \\( n \\)-dimensional vector whose elements are \\( y_i \\), \\( X \\) is an \\( n \times k \\) matrix whose rows are \\( x_i \\), \\( \beta \\) is a \\( k\\)-dimensional vector of parameters to be estimated, and \\( \epsilon \\) is an \\( n \\)-dimensional vector of residuals whose elements are \\( \epsilon_i \\).

In the linear regression setting, there are standard sets of assumptions that are sufficient to guarantee consistency. Note the plural - there are several. The first version you often learn while studying statistics is the following:


<span id="1.1"> <b>1.1. Linearity.</b> </span> The data-generating process is of the form \\( y = X \beta + \epsilon \\).

<span id="1.2"> <b>1.2. Strict exogeneity.</b> </span>\\( \mathbb{E}[\epsilon \; \| \; X] = 0 \\).

<span id="1.3"> <b>1.3. No multicollinearity.</b> </span>The rank of \\( X \\) is \\( k \\) with probability \\( 1 \\).

<span id="1.4"> <b>1.4. Conditional normality of residuals.</b> </span> \\(  \epsilon \lvert_X \sim N(0, \sigma^2 I) \\), where \\( I \\) is the \\( n \times n \\) identity matrix.

Note that an explicit normality assumption appears in <a href="#1.4"> 1.4</a>. 

However, several of these conditions can be weakened. For example, the following set of conditions is also sufficient:

<span id="2.1"> <b>2.1. Linearity.</b> The data-generating process is of the form \\( y = X \beta + \epsilon \\).

<span id="2.2"> <b>2.2. Ergodic stationarity.</b> The <a href="https://en.wikipedia.org/wiki/Stochastic_process" target="_blank"> stochastic pocess</a> \\( (y_i, x_i) \\) is <a href="https://en.wikipedia.org/wiki/Stationary_process" target="_blank"> stationary</a> and <a href="https://en.wikipedia.org/wiki/Ergodic_process" target="_blank"> ergodic</a>.

<span id="2.3"> <b>2.3. Weak exogeneity.</b> \\( \mathbb{E}[\epsilon_i x_i] = 0 \; \forall i \\).

<span id="2.4"> <b>2.4. Invertibility.</b> \\( \mathbb{E}[x_i x_i^T ] \\) is invertible.

<span id="2.5"> <b>2.5. Central limit theorem (CLT).</b> \\(  \sqrt{n} \left( \frac{1}{n} \sum_{i} x_i \epsilon_i\right) \xrightarrow{d} N(0, \Sigma) \\), where \\( \xrightarrow{d} \\) denotes <a href="https://en.wikipedia.org/wiki/Convergence_of_random_variables#Convergence_in_distribution" target="_blank"> convergence in distribution</a>.

Note here that the explicit normality assumption <a href="#1.4"> 1.4</a> is replaced by <a href="#2.5"> 2.5</a>, which is much weaker and only requires \\( \frac{1}{n} \sum_{i} x_i \epsilon_i \\) to obey a <a href="https://en.wikipedia.org/wiki/Central_limit_theorem" target="_blank"> central limit theorem</a>. The most basic version of the CLT applies to <a href="https://en.wikipedia.org/wiki/Independent_and_identically_distributed_random_variables" target="_blank"> independent and identically distributed</a> random variables, but there are many other versions with weaker conditions.

In other words, there is no need to assume that the dependent variable, the independent variables or the residuals are normally distributed in linear regression. Why, then, do so many statisticians believe it to be so?

The first reason I can see is that it's just easier. Conditions <a href="#1.1">1.1</a>-<a href="#1.4">1.4</a>  are simpler to understand and require less mathematical knowledge than <a href="#2.1">2.1</a>-<a href="#2.5">2.5</a>. In particular, you needn't know anything about the central limit theorem, ergodic and stationary processes, and different notions of convergence for random variables.

The other reason I can see is that if you assume the residuals are normally distributed, then linear regression falls into the <a href="https://en.wikipedia.org/wiki/Generalized_linear_model" target="_blank"> generalised linear class of models</a>. This is an extremely useful set of statistical models that includes workhorses such as logistic and Poisson regression. Non-linear models in this family are fitted using maximum likelihood methods - usually  the <a href="https://en.wikipedia.org/wiki/Newton%27s_method" target="_blank"> Newton-Raphson method</a>, which results in an <a href="https://en.wikipedia.org/wiki/Iteratively_reweighted_least_squares" target="_blank"> iteratively re-weighted least squares</a> algorithm. It is conceptually and pedagogically neat to include all of these models under the same banner, because they have a great deal of commonality. However, because they are maximum likelihood models, this does require explicit distributional assumptions to be made - normality in the case of linear regression. Bundling linear regression into the generalised linear class obscures the fact that there are alternate, weaker assumptions that are sufficient for the model to be valid. 


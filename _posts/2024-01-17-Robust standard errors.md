---
layout: post
title: Robust standard errors
---

<p>{{ page.date | date_to_string }}</p>

Robust standard errors are frequently used in statistics, often in an unthinking way. They are certainly valuable and useful in the context of linear regression; however, they do not serve a similar purpose in maximum likelihood estimation of non-linear models. The basic issue is that the kind of mis-specification that robust standard errors can address in linear regresion does not spoil consistency results for the parameter estimates. On the other hand, it does spoil those results in the context of maximum likelihood estimation of non-linear models. Thus at best you end up with a consistent estimator for the variance of a parameter estimate that is itself inconsistent, which isn't really of interest except as a diagnostic tool for detecting bad models. I'll explore this in more detail below.

<h3>  Linear regression </h3> 

In my <a href="https://drstevenkerr.com/2024/01/03/Why-do-so-many-statisticians-think-a-normality-assumption-is-required-in-linear-regression.html" target="_blank"> last post</a>, I discussed some sufficient conditions for 'model validity' in linear regression. I will use the same notation defined there. Namely: \\( y \\) is an \\( n \\)-dimensional vector whose elements are \\( y_i \\), \\( X \\) is an \\( n \times k \\) matrix whose rows are \\( x_i \\), \\( \beta \\) is a \\( k\\)-dimensional vector of parameters to be estimated, and \\( \epsilon \\) is an \\( n \\)-dimensional vector of residuals whose elements are \\( \epsilon_i \\). One of the conditions was as follows:

<b>Central limit theorem (CLT).</b> \\(  \sqrt{n} \left( \frac{1}{n} \sum_{i} x_i \epsilon_i\right) \xrightarrow{d} N(0, \Sigma) \\), where \\( \xrightarrow{d} \\) denotes <a href="https://en.wikipedia.org/wiki/Convergence_of_random_variables#Convergence_in_distribution" target="_blank"> convergence in distribution</a>.

If \\( \Sigma \\) is of the form \\( \sigma^2 I \\) where \\( I \\) is the \\( n \times n \\) identity matrix, then the errors are said to 'spherical'. In this case, the conditional variance of  the ordinary least squares (OLS) estimator is

$$ \mathrm{Var}(\hat{\beta} \; \lvert \; X) = \frac{\epsilon^T \epsilon}{n-k} (X^T X)^{-1},$$

where \\( \hat{\epsilon} = y - X \hat{\beta} \\).

It turns out that the spherical error requirement can be significantly weakened. In particular, there are several 'robust' variance estimators that are consistent even in the presence of heteroskedasticity. For example, the following estimator

$$ HC_0 :=  \frac{n}{n-k} (X^T X)^{-1} X^T \mathrm{diag}(\hat{\epsilon}) X (X^T X)^{-1},$$

where \\( \mathrm{diag}(\hat{\epsilon}) \\) is the diagonal matrix with non-zero elements given by \\( \hat{\epsilon}\\).

Crucially, the spherical error assumption is <b>not needed</b> for the OLS estimator \\( \hat{\beta} = (X^T X)^{-1} X^T y \\) to be consistent. This means there is no conflict between consistency of \\( \hat{\beta}\\) and presence of heteroscedasticity. Heteroscedasticity robust standard errors are therefore very useful as a quantification of uncertainty of parameter estimates in many scenarios.

As we shall see, the analogous statement is not so much the case in maximum likelihood estimation.

<h3>  Maximum likelihood estimation </h3> 

In the following, I will use \\( \theta_0 \\) to denote the 'true' parameter values of a data-generating process, \\( \theta \\) for a set of parameter values, and \\( w_i \\) for a vector  that is a single sample from the data-generating process. I will consider the particular case of M-estimators, which are estimators that maximise an objective function that takes the form of a sample average,

$$ Q_n(\theta) :=  \frac{1}{n} \sum_i m(w_i, \theta).$$

Here, \\( m \\) is just some function of the data and the parameters. The typical case in maximum likelihood estimation is \\( m(w_i, \theta) = \mathrm{ln}(f(w_i, \theta)) \\), where \\( f(w_i, \theta) \\) is a probability density parametrised by \\( \theta \\) and evaluated at \\( w_i \\). In constructing this expression, it is typically assumed that the \\( w_i \\) are <a href="https://en.wikipedia.org/wiki/Independent_and_identically_distributed_random_variables" target="_blank"> iid</a>.

Let's look at a typical set of sufficient conditions for consistency of maximum likelihood parameter estimates.

<span id="1.1"> <b>1.1.</b> The <a href="https://en.wikipedia.org/wiki/Stochastic_process" target="_blank"> stochastic pocess</a> \\( w_i \\) is <a href="https://en.wikipedia.org/wiki/Stationary_process" target="_blank"> stationary</a> and <a href="https://en.wikipedia.org/wiki/Ergodic_process" target="_blank"> ergodic</a>.

<span id="1.2"> <b>1.2.</b> \\( \theta_0 \in \Theta \\) where \\( \Theta \\) is a convex parameter space.

<span id="1.3"> <b>1.3.</b> \\( m(w_i, \theta) \\) is concave in \\( \theta \; \forall \; w_i \\).

<span id="1.4"> <b>1.4.</b> \\( m(w_i, \theta) \\) is a <a href="https://en.wikipedia.org/wiki/Measurable_function" target="_blank"> measurable function</a> of \\( w_i \; \forall \theta \in \Theta \\).

<span id="1.5"> <b>1.5.</b> \\( \mathbb{E}[m(w_i, \theta)] \\) is uniquely maximised on \\( \Theta \\) at \\( \theta_0 \\).

<span id="1.6"> <b>1.6.</b> \\( \mathbb{E}[m(w_i, \theta)] \\) is finite \\(\forall \; \theta \in \Theta \\).

The logic behind these conditions is as follows. <a href="#1.1"> 1.1</a> and <a href="#1.6"> 1.6</a> guarantee that the objective function \\( Q_n(\theta) \\) converges in probability to \\( \mathbb{E}[m(w_i, \theta)] \\). The idea is that if we then maximise \\( Q_n(\theta) \\), the resulting estimator \\( \hat{\theta} \\) will converge in probability to the unique 'true' value \\( \theta_0 \\) that maximises \\( \mathbb{E}[m(w_i, \theta)] \\), assumed to exist courtesy of <a href="#1.5"> 1.5</a>. Conditions <a href="#1.2"> 1.2</a> and <a href="#1.3"> 1.3</a> simply ensure that \\( Q_n(\theta) \\) has a unique maximum, and <a href="#1.4"> 1.4</a> is a 'mathematical housekeeping' condition that just means that \\( m(w_i, \theta) \\) is in fact a random variable.

Note that despite the fact that the iid assumption is typically used to derive the form of the likelihood function in the first place, it does not appear in <a href="#1.1">1.1</a>-<a href="#1.6">1.6</a>. We only need \\( w_i \\) to be ergodic and stationary, and \\( \mathbb{E}[m(w_i, \theta)] \\) to be uniquely maximised at \\( \theta_0 \\). In other words, the objective function \\( Q_n(\theta) \\) needn't be a correctly specified log-likelihood. This opens the doorway to <a href="https://en.wikipedia.org/wiki/Quasi-maximum_likelihood_estimate" target="_blank"> quasi-maximum likelihood estimation</a>, in which the likelihood function is mis-specified but still has the correct maximum. 

Conditions <a href="#1.2"> 1.2</a> and <a href="#1.3"> 1.3</a> also ensure that the global maximum of \\( Q_n(\theta) \\) can be found by taking the first derivative and setting equal to zero. We define the score and Hessian for observation \\( i\\) as follows

$$ \begin{align}
s(w_i, \theta) &:=  \frac{\partial m(w_i, \theta)}{\partial \theta} \\
H(w_i, \theta) &:= \frac{\partial^2 m(w_i, \theta)}{\partial \theta \partial \theta'}.
\end{align}
$$

Assume the following,

$$ \begin{align}
\frac{1}{n} \sum_i  H(w_i, \theta) &\xrightarrow{p} \mathbb{E}[H(w_i, \theta)] \\
\frac{1}{n} \sum_i  s(w_i, \theta_0) &\xrightarrow{d} N(0, \Sigma).
\end{align}
$$

We can then apply the <a href="https://en.wikipedia.org/wiki/Delta_method" target="_blank"> delta method</a> to \\( \frac{ \partial Q_n(\hat{\theta})}{\partial \theta} =  \frac{1}{n} \sum_i s(w_i, \theta) = 0 \\), obtaining

$$ \sqrt{n} (\hat{\theta} - \theta_0) \xrightarrow{d} N(0, \Sigma'),$$

where 

$$ \begin{align}
\Sigma' = \big( \mathbb{E}[H(w_i, \theta_0)] \big)^{-1} \; \Sigma \; \big( \mathbb{E}[H(w_i, \theta_0)] \big)^{-1} \label{robust} \tag{1}
\end{align} 
$$.

In the case where \\( w_i \\) are <a href="https://en.wikipedia.org/wiki/Independent_and_identically_distributed_random_variables" target="_blank"> iid</a> and some <a href="https://en.wikipedia.org/wiki/Fisher_information" target="_blank"> regularity conditions</a> are satisfied, this expression simplifies to

$$ \begin{align}
\Sigma' = - \big( \mathbb{E}[H(w_i, \theta_0)] \big)^{-1} \label{non-robust} \tag{2}
\end{align}
$$.

These results can be found in Chapter 7, sections 7.2 and 7.3 of <a href="#1"> [1]</a>.

<h3> Mis-specification </h3> 
Finally we get to the real subject of this post. As indicated above, we may still extract useful results from a model if the likelihood is mis-specified, so long as it has the correct maximum, or the mis-specification is 'small' in some appropriate sense. In this case, both \\( \hat{\theta} \\) and its variance will be consistent.

However, what if there is a more serious mis-specification? This will certainly spoil consistency results for \\( \hat{\theta} \\). We may still be able to consistently estimate the variance of \\( \hat{\theta} \\) though, using equation \\(\ref{robust}\\). But that begs the question, why should we care? What value is there in having a consistent estimator of the variance of a parameter estimator that is itself inconsistent?

This has been pointed out, for example, in <a href="#2"> [2]</a>. In essence, if there is a need to use robust standard errors, then it indicates a serious flaw in the model that demands a new and better model, not a tweak to fix the variance. 


<h3>  References </h3> 

<span id="1"> <b>1. </b> </span> Hayashi, Fumio. Econometrics. Princeton :Princeton University Press, 2000.

<span id="2"> <b>2. </b> </span> King G, Roberts ME. <a href="https://gking.harvard.edu/files/gking/files/robust_0.pdf" target="_blank"> How robust standard errors expose methodological problems they do not fix, and what to do about it.</a> Political analysis, Vol. 23, No. 2, 2015. 


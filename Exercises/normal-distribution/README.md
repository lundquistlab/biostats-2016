#Getting familiar with the normal distribution and using the d, p, q, and r functions in R


It has been observed that with a high enough *n*, the distribution of biological data tends to be "bell shaped." This distribution is called the "Gaussian" or "Normal" distribution. 

In R, the function to calculate the normal distribution is <code> dnorm() </code>:

<code>
    ?dnorm
</code>

**The Normal Distribution**

Description:

    Density, distribution function, quantile function and random
    generation for the normal distribution with mean equal to ‘mean’
    and standard deviation equal to ‘sd’.

Usage:

    dnorm(x, mean = 0, sd = 1, log = FALSE)
    pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
    qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
    rnorm(n, mean = 0, sd = 1)

Arguments:

    x, q: vector of quantiles.

    p: vector of probabilities.

    n: number of observations. If ‘length(n) > 1’, the length is
    taken to be the number required.

    mean: vector of means.

    sd: vector of standard deviations.

    log, log.p: logical; if TRUE, probabilities p are given as log(p).

    lower.tail: logical; if TRUE (default), probabilities are P[X <= x]
            otherwise, P[X > x].


The normal distribution has been prototyped in [Biostatistics 080] (http://biotoolbox.binghamton.edu/Biostatistics/2014%20Biostatistics%20Zar/Biostatistics%20Worksheets%20MAIN/080-2010%20Biostatistics%2008%20MAIN.htm).

You can use the <code> dnorm() </code> function and its derivatives to calculate P(X) and  &phi;(X). You can also do this after calculating a Z score and using a printed statistical table (e.g. Zar Appendix Table B.2)

#Assessing normality

The normality of sample data is crucial to statistical analysis because for many tests, normality is a basic assumption. You can assess data normality by plotting Q-Q plots. 

This is prototyped in [Biostatistics 090](http://biotoolbox.binghamton.edu/Biostatistics/2014%20Biostatistics%20Zar/Biostatistics%20Worksheets%20pdf/090-2010%20Biostatistics.pdf).

Q-Q plotting is a function built into the <code> "lattice" </code> package. To install lattice, you need to use the <code> install.packages() </code> function. 

#Calculating confidence intervals (CI)

A CI for a sample mean of X is the estimated range over which repeated samples of x&#772; are expected to fall (1-&alpha;) * 100%.

To calculate CI's, you can use the <code> rnorm() </code> and <code> qnorm() </code> functions in R.

This is prototyped in [Biostatistics 100](http://biotoolbox.binghamton.edu/Biostatistics/2014%20Biostatistics%20Zar/Biostatistics%20Worksheets%20pdf/100-2010%20Biostatistics.pdf).

#Assignment:

You are interested in analyzing the <code> iris </code> data. However, you know that is it important to assess the normality of that data.

1. Calculate P(X), &phi;(X) and MAX and MIN cut-off of the four variables for each species for the following ranges. **Use both the Zur textbook and the R functions**.

For example (using sepal length):

    1. Probability that X ranges between 4.5 and 5.5
    2. Probability that X ranges between 6 and 7
    3. Probability that X ranges between 4 and 4.9


2. Assess the normality of the four variables in <code> iris </code> using a Q-Q plot. Are they normally distributed?

3. Calculate the CI's for the four variables in <code> iris </code> using R.



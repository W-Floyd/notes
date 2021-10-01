# 1

*Write the formula for the sample mean, $\bar{X}$, for $n$ data points.*

$$
\boxed{
\bar{x}=\frac{1}{n} \sum_{i=1}^{n} x_{i}
}
$$

# 2

*Write the formula for the sample variance, $S^{2}$, for $n$ data points.*

$$
\boxed{
S_{x}^{2}=\frac{1}{n-1} \sum_{i=1}^{n}\left(x_{i}-\bar{x}\right)^{2}
}
$$

# 3

*If $X_{i}$ are independent, identically distributed (iid) Gaussian random variables with mean, $\mu$, and variance, $\sigma^{2}$, for $i \in\{1, \ldots, n\}$, what is the distribution of the sample mean? How is the sample variance related to a common distribution?*

***

The sample mean shall also be distributed normally. The sample mean is related to a Chi-squared distribution as follows:

$$
\boxed{
\frac{\left(n-1\right)S^2}{\sigma^2} \sim \chi^2_{n-1}
}
$$

# 4

*Sketch the distributions from problem 3 and label key points.*

***

Incomplete.

!Rplot(smorg-4)
    (Smorgasbord - 4)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
x <- seq(-4, 4, length=100)
y <- dnorm(x)

plot(x,y, type = "l", lwd = 2, axes = FALSE, xlab = "", ylab = "")
axis(1, at = -3:3, labels = c("-3s", "-2s", "-1s", expression(mu), expression("1"~s[x]), "2s", "3s"))

# Area between -1 and 1
value1 <- -1
value2 <- 1

l <- min(which(x >= value1))
h <- max(which(x < value2))

polygon(lwd = 2, c(x[c(l, l:h, h)]),
        c(0, y[l:h], 0))

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# 5

*If $X$ and $Y$ are independent random variables with means and variances $\left(\mu_{x}, \sigma_{x}^{2}\right)$ and $\left(\mu_{y}, \sigma_{y}^{2}\right)$, respectively, then what are the mean and variance of $Z=a X+b Y$?*

***

The mean is $\mu_Z = a\mu_x + b\mu_y$.

The variance is $\sigma_Z^2 = a^2\sigma^2_x + b^2 \sigma_y^2$

# 6

*For vectors $\boldsymbol{x}$ and $\boldsymbol{y}$ and a tall matrix $H$ where $\boldsymbol{y}=H \boldsymbol{x}$, what is the least squares estimate of $\boldsymbol{x}$ given the data $\boldsymbol{y}$.*

***

Incomplete.
# Chapter 3

## 3.2 - Probability Distribution of Discrete Random Variables

1. If ordered pairs ($x$, $f(x)$) is pmf (probability mass function) of discrete RV $x$ then:

    1. $f(x) \ge 0$
    2. $\sum_{x} f(x)=1$
    3. $p(X=x)=f(x)$

    **Example**

    $$
    f(x)=\frac{1}{16}\left(\begin{array}{l}4 \\ x\end{array}\right)
    $$

    $$
    x=0, 1, 2, 3, 4
    $$

    $$
    \Rightarrow p(x=0)=f(0)=\frac{1}{16}\left(\begin{array}{l}
    4 \\
    0
    \end{array}\right)
    $$

    - Can draw histogram:

    ![](!imgdir/df8bf8cb1c3df42ec8277bf0f339ddecad692ce9.png)

2. Finding cumulative distribution function (cdf) from pmf.  

    cdf will have intervals.

    **Example**

    For $f(x)=\frac{1}{16}\left(\begin{array}{l}4 \\ x\end{array}\right)$

    $$
    \text{pmf}\\
    \begin{array}{l|l}
    x & f(x) \\
    \hline 0 & \frac{1}{16} \\
    1 & \frac{4}{16} \\
    2 & \frac{6}{16} \\
    3 & \frac{4}{16} \\
    4 & \frac{1}{16}
    \end{array}
    $$

    - Left endpoint included but not right.  
    - cdf is piecewise function.

3. Calculating probabilities:

    **Example**

    $$
    \begin{array}{l}
    P(1\lt x \lt 3)=F(2)-F(1)=\frac{11}{16}-\frac{5}{16}=\frac{6}{16} \\
    P(3 \le x \lt 5)=F(4)-F(2)=1-\frac{11}{16} \\
    P(3<x \le 5)=F(5)-F(3)=1-\frac{15}{16}
    \end{array}
    $$

## 3.3 - Expected Value of a Discrete Random Variable

1. Calculating expected value of a discrete RV.

    $$
    E[x]=\mu_{x}=\sum_{x \in 0} x \cdot p(x)
    $$

    $$
    \lim _{n \rightarrow \infty} \bar{x}=\mu
    $$

    **Example**

    Skipped

2. Calculating expected value of function of discrete RV.

    $$
    E\left[h\left(x\right)\right]=\sum_{x \in O} h(x) \cdot p(x)
    $$

    **Example**

    Skipped

3. Variance ond Standard deviation of discrete RV

    $$
    V(x)=\sigma^{2}=E\left[\left(\underbrace{x-\mu}_{\begin{array}{c}\text{Deviation}\\\text{from the mean}\end{array}}\right)^{2}\right]
    $$

    $$
    \sigma=SD(x)=\sqrt{V(x)}
    $$

    **Example**

    Skipped

    - Find $E(x)$
    - Find $x-\mu$ and then find $(x-\mu)^{2}$
    - Draw table with $(x-\mu)^{2}$ \& $P(x)$.
    - $V(x)$ = expected value of table.

4. Shortcut formula for variance

    $$
    \sigma^{2}=E\left[x^{2}\right]-\mu^{2}
    $$

### Expected value of linear functions.

$$
E(a X+b)=a E(x)+b
$$

$$
V(a X+b)=a^{2} V(x)
$$

$$
SD(a x+b)=|a| SD(x)
$$

**Example**

Skipped

## 3.4 - 3.6 - Common Discrete Distributions

1. Classify type of distribution \& calculate probabilities.

    a. Binomial Distribution

        * Repeated for fixed number of trials. **Trial independent** of others.
        * Only two possible outcomes: S or F.
        * Probability of success $(p)$ same for each trial.

        $$
        \begin{aligned}
        n &= \text{Number of trials}\\
        p &= \text{Probability of success}\\
        q &= 1-p = \text{Probability of failure}\\
        x &= \text{Number of successes}\\
        n-x &= \text{Number of failures}
        \end{aligned}
        $$

        $$
        P(X=x)=\left(\begin{array}{l}
        n \\
        x
        \end{array}\right) \cdot p^{x} \cdot q^{n-x}$$
        
        $$
        x=0,1, \ldots, n
        $$ 
        
        $$
        b(x ; n, p)
        $$

        $$
        \mu=E[x]=n p
        $$

        $$
        \sigma^{2}=V[x]=n p(1-p)=n p q
        $$

# Chapter 8

Null hypothesis, $\mathrm{H}_{0}$ : taken to be true initially, contains $\mathrm{S}, \geqslant \text{or} =$

Alterative hypothesis, Ha: to be proven, contains $\gt, \ne \text{or} <$.

* One sided tests:

    - Right-Tailed

        $$
        H_{0} : \mu \leq k \text{or} \mu=k
        $$
        $$
        \mathrm{H}_a : \mu \gt \mathrm{k}
        $$

    - Left-Tailed

        $$
        \mathrm{H}_{0}: \mu \ge \mathrm{k} \text{ or } \mu=\mathrm{k}
        $$
        $$
        \mathrm{H}_a : \mu<\mathrm{K}
        $$

* Two sided tests:

    $$
    H_{0}: \mu=k
    $$
    $$
    H_{a}: \mu \neq k
    $$

One sample z-test (for $n \ge 40$ or norm. pop with $\sigma$ known).

1. Find $z$ 

    $$
    z=\frac{\bar{x}-\mu}{\sigma / \sqrt{n}}
    $$

2. Given $a$, construct a R.R. in which $H_0$ rejected. If $z$ lies in this region. If $z$ does not lie in R.R. @ that $a$ then fail to reject $H_{0}$.


# 1

*For an experiment with 3 treatments and 6 replicas:*

## a

*How many degrees of freedom are there for the treatments?*

Degrees of freedom is given by:

$$
    a-1
$$

where for our case:

$$
    a = 3
$$

Thus, degrees of freedom:

$$
    \boxed{2}
$$

## b

*How many degrees of freedom are there for the error?*

Degrees of freedom is given by:

$$
N-a
$$

where for our case:

$$
    a = 3,\qquad N=18
$$

Thus, degrees of freedom:

$$
\boxed{
    15
}
$$

## c

*How many total degrees of freedom are there?*

Degrees of freedom is given by:

$$
N-1
$$

where for our case:

$$
    N = an,\qquad a=3,\qquad n=6
$$

Thus, degrees of freedom:

$$
\boxed{
    17
}
$$

# 2

$$
S S_{T}=\underline{\qquad}+\underline{\qquad}
$$

$$
\boxed{
S S_{T}=S S_{\text {Treatments}}+S S_{E}
}
$$

# 3

$$
M S_{E}=\underline{\qquad}
$$

$$
\boxed{
M S_{E}=\frac{S S_{E}}{N-a}
}
$$

# 4

$$
M S_{\text {Treatments}}=\underline{\qquad}
$$

$$
\boxed{
M S_{\text {Treatments }}=\frac{S S_{\text {Treatments }}}{a-1}
}
$$

# 5

$$
F_{0}=\underline{\qquad}
$$

$$
\boxed{
F_{0}=\frac{S_{1}^{2}}{S_{2}^{2}}
}
$$

# 6

*What is the distribution of $F_{0}$?*

F distribution

# 7

*We reject the null hypothesis when $F_{0}$ is $\underline{\qquad}$.*

$$
\boxed{
F_{\alpha / 2, n_{1}-1, n_{2}-1} < F_{0} < F_{1-(\alpha / 2), n_{1}-1, n_{2}-1}
}
$$

where:

$$
F_{u, v}=\frac{\chi_{u}^{2} / u}{\chi_{v}^{2} / v}
$$
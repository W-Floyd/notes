# 2.15

*Consider the computer output shown below:*

*One-Sample T: $Y$*

*Test of $\mu=91$ vs. $\mu \neq 91$*

$$
\boxed{
\begin{array}{cccccccc}
\text { Variable } & N & \text { Mean } & \text { Std. Dev. } & \text { SE Mean } & 95 \% \mathrm{CI} & \text { T } & P \\
\mathrm{Y} & 25 & 92.5805 & ? & 0.4675 & (91.6160, ?) & 3.38 & 0.002
\end{array}
}
$$

## a

*Fill in the missing values in the output. Can the null hypothesis be rejected at the $0.05$ level? Why?*

We know that:

$$
\sigma_{\bar{x}}=\frac{\sigma}{\sqrt{n}}
$$

thus:

$$
\begin{aligned}
    0.4675 &= \frac{\sigma}{\sqrt{25}}\\
    \sigma &= 0.4675 \cdot 5\\
    \sigma &= 2.3375
\end{aligned}
$$

Because $n<30$, we use the t-interval:

$$
\begin{aligned}
    \bar{x} \pm t_c \left( \frac{s}{\sqrt{n}} \right)\\
    t_c = \frac{\bar{x}-\mu}{\frac{s}{\sqrt{n}}}
\end{aligned}
$$

We know that the CI is symmetrical about the mean, therefore:

$$
\begin{aligned}
    C_\text{Upper} &= 2 \cdot \bar{x} - C_\text{Lower}\\
    C_\text{Upper} &= 93.545
\end{aligned}
$$

$$
\boxed{
\begin{array}{cccccccc}
\text { Variable } & N & \text { Mean } & \text { Std. Dev. } & \text { SE Mean } & 95 \% \mathrm{CI} & \text { T } & P \\
\mathrm{Y} & 25 & 92.5805 & \mathbf{2.3375} & 0.4675 & (91.6160, \mathbf{93.545}) & 3.38 & 0.002
\end{array}
}
$$

## b

*Is this a one-sided or two-sided test?*

This is a two sided test.

## c

*If the hypothesis had been H0: $\mu=90$ versus H1: $\mu \neq 90$ would you reject the null hypothesis at the $0.05$ level?*

We would reject the null hypothesis, as the probability is $0.001122\%$

## d

*Use the output and the t table to find a 99 percent two-sided CI on the mean.*

Using $\operatorname{tInterval}\left(92.5805, 2.3375, 25, 0.99\right)$:

$$
\boxed{
    C_\text{Lower} = 91.2729 \qquad C_\text{Upper} = 93.8881
}
$$

# 2.20

*The diameters of steel shafts produced by a certain manufacturing process should have a mean diameter of $0.255 !_in$. The diameter is known to have a standard deviation of $\sigma=0.0003 !_in$. A random sample of 10 shafts has an average diameter of $0.2548 !_in$.*

## a

*Set up the appropriate hypotheses on the mean $\mu$.*

$$
\boxed{
\begin{aligned}
    H_0: \bar{x} = 0.255\\
    H_a: \bar{x} \neq 0.255
\end{aligned}
}
$$

## b

*Test these hypotheses using $\alpha=0.05$. What are your conclusions?*

Using $\operatorname{tTest}\left( 0.255, 0.2548, 0.0003, 10, \neq \right)$:

$$
    P = 0.064259
$$

Thus, we **fail to reject the null hypothesis**, as $P > a$

## c

*Find the P-value for this test.*

From above:

$$
\boxed{
    P = 0.064259
}
$$

## d

*Construct a 95 percent confidence interval on the mean shaft diameter.*

Using $\operatorname{tTest}\left( 0.255, 0.2548, 0.0003, 10, \neq \right)$:

$$
\boxed{
    C_\text{Lower} = 0.254786 \qquad C_\text{Upper} = 0.255215
}
$$
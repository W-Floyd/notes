*The diameter of a ball bearing was measured by 12 inspectors, each using two different kinds of calipers. The results were:*

$$
\begin{array}{ccccc}
\hline \text {Inspector} & \text {Caliper 1} & \text {Caliper} 2 & \text {Difference} & \text {Difference}^2 \\
\hline 1 & 0.265 & 0.264 & 0.001 & 0.000001 \\
2 & 0.265 & 0.265 & 0 & 0 \\
3 & 0.266 & 0.264 & 0.002 & 0.000004 \\
4 & 0.267 & 0.266 & 0.001 & 0.000001 \\
5 & 0.267 & 0.267 & 0 & 0 \\
6 & 0.265 & 0.268 & -0.003 & 0.000009 \\
7 & 0.267 & 0.264 & 0.003 & 0.000009 \\
8 & 0.267 & 0.265 & 0.002 & 0.000004 \\
9 & 0.265 & 0.265 & 0 & 0 \\
10 & 0.268 & 0.267 & 0.001 & 0.000001 \\
11 & 0.268 & 0.268 & 0 & 0 \\
12 & 0.265 & 0.269 & -0.004 & 0.000016 \\
   &       &       &\sum=0.003 & \sum=0.000045\\
\end{array}
$$

# a

*Is there a significant difference between the means of the population of measurements represented by the two samples? Use $\alpha=0.05$*

The means of measurements from Caliper 1 and Caliper 2 are $0.26625$ and $0.266$ respectively.

Using a two-sample t-test, the $P$ value is found to be $0.690$. Being larger than $\alpha$, we **fail to find a significant difference between the two means.**

# b

*Find the P-value for the test in part (a).*

From above:

$$
\boxed{
P = 0.690
}
$$

# c

*Construct a 95 percent confidence interval on the difference in the mean diameter measurements for the two types of calipers.*

Using a t-interval, we find:

$$
\boxed{
   C_\text{Lower} = -0.001024 \qquad C_\text{Upper} = 0.001524
}
$$
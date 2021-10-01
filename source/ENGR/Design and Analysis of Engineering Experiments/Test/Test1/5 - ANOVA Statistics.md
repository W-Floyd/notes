# 3.4

*An experiment has conducted a single-factor completely randomized design with three levels of factors and five replicates. The computed value of the F-statistic is $2.91$. Find bounds on the P-value.*

***

Incomplete.

# 3.8

*A computer ANOVA output is shown below. Fill in the blanks. You may give bounds on the $P$-value.*

$$
\begin{array}{|lccccc|}
\hline \text { One-way ANOVA } &&&&&\\
\text { Source } & \text { DF } & \text { SS } & \text { MS } & \text { F } & \text { P } \\
\text { Factor } & ? & ? & 246.93 & ? & ? \\
\text { Error } & 25 & 186.53 & ? & & \\
\text { Total } & 29 & 1174.24 & & & \\
\hline
\end{array}
$$

***

$$
\begin{array}{|lccccc|}
\hline \text { One-way ANOVA } &&&&&\\
\text { Source } & \text { DF } & \text { SS } & \text { MS } & \text { F } & \text { P } \\
\text { Factor } & \mathbf{(4)} & \mathbf{(987.71)} & 246.93 & \mathbf{(33.0952)} & \mathbf{(0.00000)} \\
\text { Error } & 25 & 186.53 & \mathbf{(7.4612)} & & \\
\text { Total } & 29 & 1174.24 & & & \\
\hline
\end{array}
$$

# 3.14

*A product developer is investigating the tensile strength of a new synthetic fiber that will be used to make cloth for men's shirts. Strength is usually affected by the percentage of cotton used in the blend of materials for the fiber. The engineer conducts a completely randomized experiment with five levels of cotton content and replicated the experiment five times. The data are shown in the following table.*

$$
\begin{array}{lccccc}
\hline \begin{array}{c}
\text { Cotton } \\
\text { Weight } \\
\text { Percentage }
\end{array} & \multicolumn{5}{c}{\text { Observations }} \\
\hline 15 & 7 & 7 & 15 & 11 & 9 \\
20 & 12 & 17 & 12 & 18 & 18 \\
25 & 14 & 19 & 19 & 18 & 18 \\
30 & 19 & 25 & 22 & 19 & 23 \\
35 & 7 & 10 & 11 & 15 & 11 \\
\hline
\end{array}
$$

## a

*Is there evidence to support the claim that cotton content affects the mean tensile strength? Use $\alpha=0.05$.*

Null hypothesis is that there is no effect due to cotton weight percentage. The F-statistic calculated is $14.7568$. For $\frac{4}{20}$ and given $\alpha$, we find the critical F-statistic to be $2.87$.

Thus, **there is evidence to claim cotton affects the mean tensile strength**, as the found F-statistic is greater than the critical F-statistic for the given significance.


## b

*Use the Fisher LSD method to make comparisons between the pairs of means. What conclusions can you draw?*

Using the Fisher LSD method, our LSD is found to be $21.31$, and so in our case, $(1,2)$, $(1,3)$, $(1,4)$, $(2,4)$, $(2,5)$, and $(3,5)$ are found to be significantly different.

**Overall, it is seen that the effect of cotton content on tensile strength is significant.**

## c

*Analyze the residuals from this experiment and comment on model adequacy.*

***



---
title: "Final Exam"
subtitle: "Design and Analysis of Engineering Experiments"
documentclass: article
date: "2021-11-23"
author: "William Floyd"
include-before: |
    \newpage
header-includes: |
    \usepackage{fancyhdr}
    \pagestyle{fancy}
    \fancyfoot[LO,LE]{William Floyd}
    \fancyfoot[CE,CO]{Final Exam}
    \fancyfoot[RE,RO]{Pg. \thepage}
---

# Problem 1 - Smorgasbord

## 1

*Write the formula for the sample mean, $\bar{X}$, for $n$ data points:*

### Answer:

$$
\bar{X} = \frac{1}{n} \sum\limits_{i=1}^n X_i
$$

## 2

*Write the formula for the sample variance, $S^2$ for $n$ data points.*

### Answer:

$$
S^2 = \frac{\sum\limits_{i=1}^n \left( X_i - \bar{X} \right)}{n-1}
$$

## 3

*If $X_i$ are independent, identically distributed (iid) Gaussian random variables with mean,$\mu$, and variance $\sigma^2$, for $i \in \left\{ 1, \ldots, n \right\}$, what is the distribution of the sample mean? How is the sample variance related to a common distribution?*

### Answer:

The sample mean is also a Gaussian distribution.

The sample variance is related to a Chi-squared distribution as follows:

$$
\frac{(n-1)S^2}{\sigma^2} \sim \chi^2_{n-1}
$$

## 4

Sketch the distributions from problem 3 and label key points

### Answer

**Normal/Gaussian Distribution**

<!-- $$
\begin{tikzpicture}[samples=200]
\begin{axis}[
xmin=-3, xmax=3,
scale only axis,
xticklabels={$-3\sigma$},
xmajorgrids,
      xtick={
           -2, -1, 0, 1, 2
        },
      xticklabels={
           $\mu-2\sigma$, $\mu-\sigma$,$\mu$,$\mu+\sigma$,$\mu+2\sigma$
      },
yticklabels={},
]
\addplot[color=blue] plot (\x,{(
    1/(1*sqrt(2*pi)))*exp((-(\x-0)^2))/(2*1^2)
)});
\end{axis}
\end{tikzpicture}
$$ -->


![](!imgdir/6063838410f97f80638826aec0105089e8b40917.png)


**Chi-Squared Distribution**

![](!imgdir/f52348b08a32cca49cad84f300de64d1c8d5bbf6.png)

## 5

*If $X$ and $Y$ are independent random variables with means and variances ($$\mu_x$$, $\sigma_x^2$), and ($\mu_y$, $\sigma_y^2$) respectively, then what are the mean and variance of $Z=aX+bY$?*

### Answer

The mean is $$\mu_Z = a \mu_x + b \mu_y$$.

The variance is $$\sigma^2_Z = a^2 \sigma^2_x + b^2 \sigma^2_y$$.

## 6

*For vectors $x$ and $y$ and a tall matrix $H$ where $y=Hx$, what is the least squares estimate of $x$ given the data $y$*.

### Answer

Unsure...

$$
x=H^{-1}y
$$

# Problem 2 - More-gas-board

## 1

*For an experiment with 4 treatments and 5 replicas:*

### a

*How many degrees of freedom are there for the treatments?*

#### Answer

Degrees of freedom for treatments is given by:

$$
a-1
$$

where for our case:

$$
a=4
$$

Thus, degrees of freedom for treatments:

$$
4-1 = \boxed{3}
$$

### b

*How many degrees of freedom are there for the error?*

#### Answer

Degrees of freedom for error is given by:

$$
N-a
$$

where for our case:

$$
N=an, \quad n=5, \quad a=4
$$

Thus, degrees of freedom for error:

$$
5 \cdot 4 - 4 = \boxed{16}
$$

### c

*How many total degrees of freedom are there?*

#### Answer

Total degrees of freedom is given by:

$$
N-1
$$

where for our case:

$$
N=an, \quad n=5, \quad a=4
$$

Thus, total degrees of freedom:

$$
5 \cdot 4 - 1 = \boxed{19}
$$

## 2

$$
SS_T = \_\_\_\_ + \_\_\_\_
$$

$$
\boxed{
SS_T = SS_{\text{Treatments}} + SS_{\text{E}}
}
$$

## 3

$$
MS_E = \_\_\_\_
$$

$$
\boxed{
MS_E = \frac{SS_E}{N-a}
}
$$

## 4

$$
MS_{\text{Treatments}} = \_\_\_\_
$$

$$
\boxed{
MS_{\text{Treatments}} = \frac{SS_\text{Treatments}}{a-1}
}
$$

## 5

$$
F_0 = \_\_\_\_
$$

$$
\boxed{
F_0 = \frac{S_1^2}{S_2^2}
}
$$

## 6

*What is the distribution of $F_0$?*

F distribution.

## 7

*We reject the null hypothesis when $F_0$ is $\_\_\_\_$*

$$
\boxed{
F_{\alpha/2,n_1-1,n_2-1} < F_0 < F_{1-(\alpha/2),n_1-1,n_2-1}
}
$$

where:

$$
F_{u,v} = \frac{\chi^2_u/u}{\chi^2_v/v}
$$

# Problem 3 - Fractional Factorial Concepts

## 1

*What is the purpose of fractional factorial design?*

Fractional factorial design greatly reduces the number of experiments that must be run in order to determine the effects of design factors, as well as lower order interactions of these. This is primarily useful in screening experiments, where a large number of variables are considered at the same time, and for which an exhaustive analysis would be prohibitively expensive or time consuming.

## 2

*Why should you consider using center points in a design?*

Sampling a center point in a fractional factorial design allows accounting for possible quadratic curvature in the system. Additionally, center points may be purposefully aligned with conditions that are either easy to achieve, or are routinely achieved in normal operation, thus providing a sanity check to the experiment.

## 3

*What are aliases in fractional designs, and why do they exist?*

Aliases in fractional factorial design are the masking of true values with possible interactions. For example, in one version of a $2^{3-1}$ experiment, when estimating $$A$$, what is in fact found is an estimate for $$A+CB$$. This is due to the restricted sampling size while still containing a full range of variables.

## 4

*How can you resolve aliases?*

Aliases may be resolved by conducting the alternate fraction of the factorial experiment. The full dataset may then be considered as a whole, or at least taken as two blocks. Alternatively, if aliasing is suspected in a certain set of variables, further testing may be done on those variables alone to isolate the interaction effect.

# Problem 4 - Montgomery 5.15

*An experiment is conducted to study the influence of operating temperature and three types of face-plate glass in the light output of an oscilloscope tube. The following data are collected:*


$$
\begin{array}{cccc}
\hline & \multicolumn{3}{c}{\text { Temperature }} \\
\cline { 2 - 4 } \text { Glass Type } & 100 & 125 & 150 \\
\hline 1 & 580 & 1090 & 1392 \\
& 568 & 1087 & 1380 \\
& 570 & 1085 & 1386 \\
& & & \\
2 & 550 & 1070 & 1328 \\
& 530 & 1035 & 1312 \\
& 579 & 1299 & 1000 \\
& & & \\
& 546 & 1045 & 867 \\
3 & 575 & 1053 & 904 \\
& 599 & 1066 & 889 \\
\hline
\end{array}
$$


## a

*Use $\alpha=0.05$ in the analysis. Is there a significant interaction effect? Does glass type or temperature affect the response? What conclusions can you draw?*

![](!imgdir/f00b842a93ff0daa70e8a2f969a63531e8fb6de5.png)

It can be concluded that both glass temperature and glass type have a significant effect on the light output of the oscilloscope tube.

## b

*Fit an appropriate model relating light output to glass type and temperature.*

$$
\text{Response} = \left\{\begin{array}{cc}
-6567+ 107.5\cdot t - 0.3649\cdot t^{2} & \text{Glass Type} =1 
\\
 -6233+ 104.4\cdot t - 0.3649\cdot t^{2} & \text{Glass Type} =2 
\\
 -5494+ 97.5\cdot t - 0.3649\cdot t^{2} & \text{Glass Type} =3 
\end{array}\right.
$$

![](!imgdir/6bd4e3164b20facc4f8cef97deffe4530795d7df.png)

## c

*Analyze the residuals from this experiment. Comment on the adequacy of the models you have considered.*

![](!imgdir/ad35a7b6c86a3ea9e8a66720fc9106dd9419f943.png)

The residuals for the experiment are mostly minimal, and so the model is largely correct. However, further data collection should be undertaken given the limited dataset, as well as several values that fall well outside of the predicted model.

# Problem 5 - Montgomery 6.5

*An engineer is interested in the effects of cutting speed $$(A)$$, tool geometry $$(B)$$, and cutting angle on the life (in hours) of a machine tool $$(C)$$. Two levels of each factor are chosen, and three replicates of a $2^{3}$ factorial design are run. The results are as follows:*

$$
\begin{array}{cccccccc}
\hline & & & \text { Treatment } & & \text { Replicate } & \\
A & B & C & \text { Combination } & \text { I } & \text { II } & \text { III } \\
\hline \ - & - & - & (1) & 22 & 31 & 25 \\
\ + & - & - & a & 32 & 43 & 29 \\
\ - & + & - & b & 35 & 34 & 50 \\
\ + & + & - & a b & 55 & 47 & 46 \\
\ - & - & + & c & 44 & 45 & 38 \\
\ + & - & + & a c & 40 & 37 & 36 \\
\ - & + & + & b c & 60 & 50 & 54 \\
\ + & + & + & a b c & 39 & 41 & 47 \\
\hline
\end{array}
$$

## a

*Estimate the factor effects. Which effects appear to be large?*


![](!imgdir/178b12fc177f65fa47dfe777f2342be2c61cf352.png)

The main factors that have an effect are Geometry, Angle, and the combination of Speed and Angle (B, C, and AC)

## b

*Use the analysis of variance to confirm your conclusions for part (a).*

![](!imgdir/177e3a2794be4777ffef8942df1403d3f4833d1e.png)

it confirms that factors B, C, and AC are significant.

## c

*Write down a regression model for predicting tool life (in hours) based on the results of this experiment.*

$$
\boxed{
\text{Response} = 40.83 + 0.17 \cdot \text{Speed} + 5.67 \cdot \text{Geometry} + 3.42 \cdot \text{Angle} - 4.42 \cdot \text{Speed} \cdot \text{Angle}
}
$$

where Speed, Geometry, and Angle are $-1$ for negative and $1$ for positive.

## d

*Analyze the residuals. Are there any obvious problems?*

There does not appear to be any significant problems, although one residual value is somewhat larger than desired (11.5).

![](!imgdir/3362efb2f8e028bd62c70a524d9d7f9f0d394af0.png)

## e

*Based on the analysis of main effects and interaction plots, what levels of $A$, $B$, and $C$ would you recommend using?*

A-, B+, C+ (bc) is recommended, as it maximizes the tool life.

# Problem 6 - Spreadsheet Problem

*Implement the Measurement Model (H matrix), least squares solution, variance estimate, confidence intervals, standard deviation estimate. Implement these steps using formulas so that when new data are provided, the spreadsheet will re-compute the estimates for the new values.*

Unsure.
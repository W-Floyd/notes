# Exam 3 - Practice

## Problem 1

Let $Y_{1}$ and $Y_{2}$ have the joint density function

$$
f\left(y_{1}, y_{2}\right)=\left\{\begin{array}{ll}
e^{-\left(y_{1}+y_{2}\right)}, & y_{1}>0, y_{2}>0 \\
0, & \text { elsewhere. }
\end{array}\right.
$$

a) What is $P\left(Y_{1}<3, Y_{2}>4\right) ?$ (Round your answer to four decimal places.)

$$
\begin{aligned}
P\left(Y_{1}<3, Y_{2}>4\right) &=\int_{4}^{\infty} \int_{0}^{3} e^{-\left(y_{1}+y_{2}\right)} d y_{1} d y_{2} \\
&=\left(e^{3}-1\right) e^{-7} \\
P&=0.0174
\end{aligned}
$$

b) What is $P\left(Y_{1}+Y_{2}<4\right) ?$ (Round your answer to four decimal places.)

$$
\begin{aligned}
& 0<Y,<4-Y_{2} \\
\int_{0}^{4} & \int_{0}^{4-Y_{2}} e^{-\left(y_{1}+y_{2}\right)} d y_{1} dy_{2} \\
=&\left(e^{4}-5\right) e^{-4} \\
=& 0.9084
\end{aligned}
$$

---

## Problem 2

Let $Y_{1}$ and $Y_{2}$ have the joint probability density function given by

$$
f\left(y_{1}, y_{2}\right)=\left\{\begin{array}{ll}
k\left(1-y_{2}\right), & 0 \leq y_{1} \leq y_{2} \leq 1 \\
0, & \text { elsewhere. }
\end{array}\right.
$$

a) Find the value of $k$ that makes this a probability density function.

$$
\begin{aligned}
\text { Solve for } k :\\
1 &=\int_{0}^{1} \int_{0}^{y_{2}} k\left(1-y_{2}\right) d y_{1} d y_{2} \\
\therefore  k&=6
\end{aligned}
$$

b) Find $P\left(Y_{1} \leq \frac{7}{8}, Y_{2} \geq \frac{1}{2}\right)$ (Round your answer to four decimal places.)

$$
\begin{aligned}
P\left(y_{1} \leq \frac{7}{8}, y_{2} \geq \frac{1}{2}\right) &=P\left(y_{1} \leq \frac{7}{8}, y_{1} \leq y_{2} \leq 1\right)-P\left(0 \leq y_{1} \leq y_{2} \leq 1, \frac{1}{2} \leq y_{2} \leq 1\right) \\
&=\int_{0}^{\frac{7}{8}} \int_{y_{1}}^{1} 6\left(1-y_{2}\right) d y_{2} d y_{1}-\int_{\frac{1}{2}}^{1} \int_{0}^{y} 6\left(1-y_{2}\right) d y_{1} d y_{2} \\
&= 0.4980
\end{aligned}
$$

---

## Problem 3

We determined that

$$
f\left(y_{1}, y_{2}\right)=\left\{\begin{array}{ll}
6\left(1-y_{2}\right), & 0 \leq y_{1} \leq y_{2} \leq 1 \\
0, & \text { elsewhere }
\end{array}\right.
$$

is a valid joint probability density function.

a) Find the marginal density function for $Y_{1}$.

$$
\begin{aligned}
f_{1}\left(y_{1}\right)&=\int_{y_{1}}^{1} 6\left(1-y_{2}\right) d y_{2} &,
\text { where } 0 \leq y_{1} \leq 1 \\
f_{2}\left(y_{2}\right)&=\int_{0}^{y_{1}} 6\left(1-y_{2}\right) d y_{1} &,
\text { where } 0 \leq y_{2} \leq 1
\end{aligned}
$$

b) Find $P\left(Y_{2} \leq \frac{1}{2} \mid Y_{1} \leq \frac{7}{8}\right) .$ (Skip this problem)

c) Find the conditional density function of $Y_{1}$ given $Y_{2}=y_{2}$.

$$
\begin{aligned}
f\left(y_{1} \mid {y_{2}}\right) &=\frac{6\left(1-y_{2}\right)}{-6 \cdot y_{2}\left(y_{2}-1\right)} \\
&=\frac{1}{y_{2}} &,
\text { where }  0 \leq y_{1} \leq y_{2} \leq 1
\end{aligned}
$$

d) Find the conditional density function of $Y_{2}$ given $Y_{1}=y_{1}$.

$$
\begin{aligned}
f\left(y_{2} \mid y_{1}\right) &=\frac{6\left(1-y_{2}\right)}{3 \cdot\left(y_{1}^{2}-2 \cdot y_{1}+1\right)} \\
&=\frac{2\left(1-y_{2}\right)}{ y_{1}^{2}-2 y_{1}+1} &, \text { where }  0 \leq y_{1} \leq y_{2} \leq 1
\end{aligned}
$$

e) Find $P\left(Y_{2} \geq \frac{3}{4} \mid Y_{1}=\frac{1}{2}\right)$. (Enter your probability as a fraction.)

$$
\begin{aligned}
P\left(Y_{2} \geq \frac{3}{4} \mid Y_{1}=\frac{1}{2}\right)&=\frac{f\left(y_{2}, \frac{1}{2}\right)}{3 \cdot\left(\left(\frac{1}{2}\right)^{2}-2 \cdot\left(\frac{1}{2}\right)+1\right)} \\
&=\frac{6\left(1-y_{2}\right)}{3 \cdot \frac{1}{4}}=8\left(1-y_{2}\right) &, \frac{3}{4} \leq y_{2} \leq 1 \\
&=\int_{\frac{3}{4}}^{1} 8\left(1-y_{2}\right) d y_{2} \\
&=0.25=\frac{1}{4}
\end{aligned}
$$

---

## Problem 4

A service station has both self-service and full-service islands. On each island, there is a single regular unleaded pump with two hoses. Let $X$ denote the number of hoses being used on the self-service island at a particular time, and let $Y$ denote the number of hoses on the full-service island in use at that time. The joint pmf of $X$ and $Y$ appears in the accompanying tabulation

$$
\begin{array}{ll|lll}
&&&y\\
p(x, y) & & 0 & 1 & 2 \\
\hline & 0 & 0.10 & 0.05 & 0.01 \\
x & 1 & 0.07 & 0.20 & 0.07 \\
& 2 & 0.06 & 0.14 & 0.30
\end{array}
$$

a) What is $P(X=1$ and $Y=1)$?

$$P(X=1 \text{ and } Y=1)=0.20$$

b) Compute $P(X \leq 1$ and $Y \leq 1)$

$$
\begin{aligned}
P(X \leq 1 \text { and } Y \leq 1) &=0.10+0.05+0.07+0.20 \\
&=0.42
\end{aligned}
$$

c) Give a word description of the event $\{X \neq 0$ and $Y \neq 0\}$.

- [ ] One hose is in use on both islands.
- [ ] One hose is in use on one island.
- [ ] At most one hose is in use at both islands.
- [x] **At least one hose is in use at both islands.**

Compute the probability of this event.

$$
\begin{aligned}
P(X \neq 0 \text{ and } Y \neq 0)&=0.20 + 0.14 + 0.07 + 0.30 \\
&=0.71
\end{aligned}
$$

d) Compute the marginal pmf of $X$.

$$
\begin{aligned}
p_{X}(0) &=0.10+0.05+0.01 \\
&=0.16 \\
p_{X}(1) &=0.07+0.20+0.07 \\
&=0.34 \\
p_{X}(2) &=0.06+0.14+0.30 \\
&=0.50
\end{aligned}
$$

$$
\begin{array}{c|lll}
x & 0 & 1 & 2 \\
\hline p_{X}(x) & 0.16 & 0.34 & 0.50
\end{array}
$$


Compute the marginal pmf of $Y$.

$$
\begin{aligned}
p_{Y}(0) &=0.10+0.07+0.06 \\
&=0.23 \\
p_{Y}(1) &=0.05+0.20+0.14 \\
&=0.39 \\
p_{Y}(2) &=0.01+0.07+0.30 \\
&=0.38
\end{aligned}
$$

$$
\begin{array}{c|lll}
y & 0 & 1 & 2 \\
\hline p_{Y}(y) & 0.23 & 0.39 & 0.38
\end{array}
$$

Using $p_{X}(x)$, what is $P(X \leq 1)$?

$$
\begin{aligned}
P(X \leq 1) &=0.16+0.34 \\
&=0.50 \\
\text { or } & \\
&=1-0.50 \\
&=0.50
\end{aligned}
$$


e) Are $X$ and $Y$ independent rv's? Explain.
- [x] **$X$ and $Y$ are not independent because $P(x, y) \neq p_{X}(x) \cdot p_{Y}(y)$.**
- [ ] $X$ and $Y$ are independent because $P(x, y) \neq p_{X}(x) \cdot p_{Y}(y)$
- [ ] $X$ and $Y$ are independent because $P(x, y)=p_{X}(x) \cdot p_{Y}(y)$
- [ ] $X$ and $Y$ are not independent because $P(x, y)=p_{X}(x) \cdot p_{Y}(y)$

---

## Problem 5

Each front tire on a particular type of vehicle is supposed to be filled to a pressure of 26 psi. Suppose the actual air pressure in each tire is a random variable --- $X$ for the right tire and $Y$ for the left tire, with joint pdf given below.

$$
f(x, y)=\left\{\begin{array}{cl}
K\left(x^{2}+y^{2}\right) & 22 \leq x \leq 32,22 \leq y \leq 32 \\
0 & \text { otherwise }
\end{array}\right.
$$

a)  Compute the covariance between $X$ and $Y$. (Round your answer to four decimal places.)

$$
\begin{aligned}
\text { Solve for } K: 1&=\int_{22}^{32} \int_{22}^{32} K\left(x^{2}+y^{2}\right) d x  d y \\
 \therefore K&=\frac{3}{442400}\\
\end{aligned}
$$

$$
\begin{aligned}
E[X Y]&=\int_{22}^{32} \int_{22}^{32} x y \cdot\left(K \cdot\left(x^{2}+y^{2}\right)\right) d x d y\\
&= \frac{824499}{1106}\\
E[X]&=\mu_{x}=\int_{22}^{32} \int_{22}^{32} x\cdot\left(K \cdot\left(x^{2}+y^{2}\right)\right) d x d y \\
&= \frac{60399}{2212}\\
E[Y]&=\mu_{y}=\int_{22}^{32} \int_{22}^{32} y\cdot\left(K \cdot\left(x^{2}+y^{2}\right)\right) d x d y\\
&= \frac{60399}{2212}\\
\end{aligned}
$$

$$
\begin{aligned}
\text{Given}: \sigma_{X Y}&=\operatorname{Cov}(X, Y)=E[X Y]-\mu_{x} \cdot \mu_{y}\\
&= \frac{824499}{1106} - \left( \frac{60399}{2212}\right)^2\\
&= -0.09312
\end{aligned}
$$

b) Compute the correlation coefficient $\rho$ for this $X$ and $Y$. (Round your answer to four decimal places.)

$$
\begin{aligned}
\text { Correlation coefficient:} \quad & \rho_{x y}=\frac{\sigma_{x y}}{\sigma_{x} \cdot \sigma_{y}}, \quad -1 \leq \rho_{x y} \leq 1\\
\text{ Variance: } \quad & \sigma_x^2 = E[x^2]-\mu_x^2\\
\text{ Standard Deviation: } \quad & \sigma_x = \sqrt{\sigma_x^2}\\
\end{aligned}
$$

$$
\begin{aligned}
\sigma_{x}&=\sqrt{E\left[x^{2}\right]-{E[x]}^{2}} \\
E\left[x^{2}\right]&=\int_{22}^{32} \int_{22}^{32} x^{2}\left(K\left(x^{2}+y^{2}\right)\right) d x d y \\
&=\frac{1250636}{1659}\\
\therefore \sigma_{x}&= \sqrt{\frac{1250636}{1659} - \left(\frac{60399}{2212}\right)^2 }\\
&= \sqrt{\frac{121509725}{14678832}}\\
&= \sqrt{8.27789}\\
&= 2.87713\\
\end{aligned}
$$

$$
\text{In this case, }\sigma_x=\sigma_y
$$

$$
\begin{aligned}
\rho_{x y}&= \frac{-0.09312}{8.27789} \\
&= -0.0112
\end{aligned}
$$

---

## Problem 6

Contracts for two construction jobs are randomly assigned to one or more of three firms, A, B, and C. The joint distribution of
$Y_1$,
the number of contracts awarded to firm A, and
$Y_2$,
the number of contracts awarded to firm B, is given by the entries in the following table.

$$
\begin{array}{|c|c|c|c|}
\hline & & y_{1}  \\
\hline y_{2} & 0 & 1 & 2 \\
\hline 0 & \frac{1}{9} & \frac{2}{9} & \frac{1}{9} \\
\hline 1 & \frac{2}{9} & \frac{2}{9} & 0 \\
\hline 2 & \frac{1}{9} & 0 & 0 \\
\hline
\end{array}
$$

Find $\operatorname{Cov}\left(Y_{1}, Y_{2}\right)$. (Round your answer to three decimal places.)

$$
\begin{aligned}
&\begin{aligned}
\operatorname{Cov}\left(Y_{1}, Y_{2}\right) &=E[Y_1Y_2]-\mu_{Y_1} \mu_{Y_@} \\
E[Y_1Y_2] &=0\cdot0 \cdot \frac{1}{4}+0\cdot1 \cdot \frac{2}{4}+\cdots+1 \cdot 1 \cdot \frac{2}{9}+2 \cdot 1 \cdot 0+\ldots \\
&=\frac{2}{9} \\
\mu_{x} &=E[x]=0 \cdot(\ldots)+1 \cdot\left(\frac{2}{9}+\frac{2}{9}\right)+2 \cdot\left(\frac{1}{9}\right) \\
&=\frac{6}{9}=\frac{2}{3}
\end{aligned}\\
&\mu_{3}=\mu_{x} \text { in this case }\\
&\begin{aligned}
\therefore \operatorname{Cov}\left(Y_{1}, Y_{2}\right)&=\frac{2}{9}-\left(\frac{2}{3}\right)^{2}\\
&=\frac{2}{9}-\frac{4}{9} \\
&=-\frac{2}{9} \\
&=-0.222
\end{aligned}
\end{aligned}
$$

Does the sign of $\operatorname{Cov}\left(Y_{1}, Y_{2}\right)$ surprise you? Why?

- [ ] For larger values of $y_{1},$ the joint distribution increases as $y_{2}$ increases, so we should expect $\operatorname{Cov}\left(Y_{1}, Y_{2}\right)$ to be positive.
- [x] **For larger values of $y_{1},$ the joint distribution decreases as $y_{2}$ increases, so we should expect $\operatorname{Cov}\left(Y_{1}, Y_{2}\right)$ to be negative.**
- [ ] For larger values of $y_{1},$ the joint distribution increases as $y_{2}$ increases, so we should expect $\operatorname{Cov}\left(Y_{1}, Y_{2}\right)$ to be negative.
- [ ] For larger values of $y_{1},$ the joint distribution decreases as $y_{2}$ increases, so we should expect $\operatorname{cov}\left(Y_{1}, Y_{2}\right)$ to be positive.

---

## Problem 7

A shipping company handles containers in three different sizes: (1) $27 \mathrm{ft}^{3}(3 \times 3 \times 3)$, (2) $125 \mathrm{ft}^{3}$, and (3) $512 \mathrm{ft}^{3}$. Let $X_{i}(i=1,2,3)$ denote the number of type $i$ containers shipped during a given week. With $\mu_{i}=E\left(x_{i}\right)$ and $\sigma_{i}^{2}=V\left(X_{i}\right)$, suppose that the mean values and standard deviations are as follows:

$$
\begin{array}{lll}
\mu_{1}=230 & \mu_{2}=240 & \mu_{3}=110 \\
\sigma_{1}=10 & \sigma_{2}=12 & \sigma_{3}=8
\end{array}
$$

a) Assuming that $X_{1}, X_{2}, X_{3}$ are independent, calculate the expected value and variance of the total volume shipped. [Hint: Volume $=27 X_{1}+125 X_{2}+512 X_{3}$. ]

$$
\begin{array}{l}
E[a X+b Y+C]=a E[X]+b E[Y]+C \\
V[a X+b Y+C]=a^{2} V[X]+b^{2} V[Y]+2 a b \operatorname{Cov}(X, Y]
\end{array}
$$

$$
\begin{aligned}
\text { Expected Value } &=230\cdot27+240 \cdot 125+512 \cdot 110 \\
&=92530 \mathrm{ft}^3
\end{aligned}
$$

$$
\begin{aligned}
V[1+2+3]=& 27^{2} V_{1}+125^{2} V_{2}+512^{2} V_{3} \\
+ &2 \cdot 27 \cdot 125 \cdot 512 \cdot \operatorname{Cov}(x, y)\\
\text{For independant, }\operatorname{Cov} =& 0\\
\therefore V[1+2+3]=&27^{2} V_{1}+125^{2} V_{2}+512^{2} V_{3}\\
\end{aligned}
$$

$$
\begin{array}{l}
V_{1}=\sigma_{1}^{2}=10^{2} \\
V_{2}=\sigma_{2}^{2}=12^{2} \\
V_{3}=\sigma_{3}^{2}=8^{2}
\end{array}
$$

$$
\begin{aligned}
\therefore V[1+2+3] &=27^{2} \cdot 10^{2}+125^{2} \cdot 12^{2}+512^{2} \cdot 8^{2} \\
&=19100116 \mathrm{ft}^{6}
\end{aligned}
$$

b) Would your calculations necessarily be correct if the $X_{i}$ 's were not independent? Explain.
- [ ] The expected value would not be correct, but the variance would be correct.
- [x] **The expected value would be correct, but the variance would not be correct.**
- [ ] Both the expected value and the variance would be correct.
- [ ] Neither the expected value nor the variance would be correct.

---

## Problem 8

Young's modulus is a quantitative measure of stiffess of an elastic material. Suppose that for metal sheets of a particular type, its mean value and standard deviation are $85 \mathrm{GPa}$ and $1.9 \mathrm{GPa}$, respectively. Suppose the distribution is normal. (Round your answers to four decimal places.)

a) Calculate $P(84 \leq \bar{X} \leq 86)$ when $n=9$.

$$
\begin{aligned}
\bar{X} \sim& N\left(\mu, \frac{\sigma}{\sqrt{n}}\right)\\
P(84 \leq \bar{X} \leq 86) =& \int_{84}^{86} n\left(x ; 85, \frac{1.9}{\sqrt{9}}\right) d x \\
=& 0.8857
\end{aligned}
$$

b) How likely is it that the sample mean diameter exceeds 86 when $n=16$?

$$
\begin{aligned}
P(86 \leq \bar{X}) =& \int_{86}^{\infty} n\left(x ; 86, \frac{1.9}{\sqrt{16}}\right) d x \\
=&0.017634
\end{aligned}
$$

---

## Problem 9

An anthropologist wishes to estimate the average height of men for a certain race of people. If the population standard deviation is assumed to be 2.8 inches and if she randomly samples 100 men, find the probability that the difference between the sample mean and the true population mean will not exceed 0.7 inch. (Round your answer to four decimal places.)

$$
\begin{aligned}
& P(-0.7 \leq \bar{x}-\mu \leq 0.7) \\
=& P\left(\frac{-0.7}{\frac{\sigma}{\sqrt{n}}} \leq \frac{\bar{x}-\mu}{\frac{\sigma}{\sqrt{n}}} \leq \frac{0.7}{\frac{\sigma}{\sqrt{n}}}\right)\\
Z=& \frac{\bar{x}-\mu}{\frac{\sigma}{\sqrt{n}}}\\
\therefore & P\left(\frac{-0.7}{\frac{\sigma}{\sqrt{n}}} \leq Z \leq \frac{0.7}{\frac{\sigma}{\sqrt{n}}}\right)\\
\operatorname{normCdf}\left(\frac{-0.7}{\frac{2.8}{\sqrt{100}}},\frac{0.7}{\frac{2.8}{\sqrt{100}}},0,1\right) =& 0.9876
\end{aligned}
$$
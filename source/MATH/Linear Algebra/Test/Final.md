---
notesheet: true
multicols: 3
fontsize: 6
---

!define(ex)(**Ex:**)

# Test 1

## Augmented Matrices

### System of eqn. to matrix form & matrix form to system.

!ex
$$
\begin{array}{l}
3 x-2 y+4 z=1 \\
x+y-2 z=3 \\
2 x-3 y+6 z=8
\end{array} \Rightarrow\left[\begin{array}{cccc}
3 & -2 & 4 & 1 \\
1 & 1 & -2 & 3 \\
2 & -3 & 6 & 8
\end{array}\right]
$$

!ex
$$
\left[\begin{array}{cccc}
1 & -2 & 3 & 9 \\
-1 & 3 & 0 & -4 \\
2 & -5 & 5 & 17
\end{array}\right] \Rightarrow \begin{array}{r}
x-2 y+3 z=9 \\
-x+3 y=-4 \\
2 x-5 y+5 z=17
\end{array}
$$

## Solve Eor System Of Equations.

### Parametric representation.

$$
\begin{aligned}
3& x+2 y-z=3 \\
\Rightarrow z&=3 x+2 y-3 \\
x&=s \\
y&=t
\end{aligned} \Rightarrow
\{\underbrace{(s, t, 3 s+2 t-3)}_{\text {in terms of } s \text{\&} t} \mid s,  t \in \mathbb{R}\}
$$

* $\operatorname{rref}$ (reduced row echelon form) gives solutions of equations (last column gives solutions of eqns.)
* Set notation: $\left\{ (x,y,z) \right\}$
* $m\times n$ matrix has $m$ rows and $n$ columns
* If last row of $\operatorname{rref}$ solution is all zeros then infinite number of solutions.
* If all zeros in last row and last one is a number other than zero, then no solutions.
* If 2 eqns & 3 unknowns then infinite number of solutions.
* For infinite number of solutions, use Parametric

!ex (Reduced)
$$
\begin{aligned}
x_{1}-2 x_{2} +5 x_{3}&= 2 \\
x_{2}-2 x_{3} &=-1
\end{aligned} \Rightarrow \begin{array}{l}
x_{3}=t \\
x_{2}=2 t-1 \\
x_{1}=4 t-2-5 t+2 \Rightarrow x_{1}=-t
\end{array}
$$
$$
\{(-t, 2 t-1, t) \mid t \in \mathbb{R}\}
$$

!ex
$$
\left[\begin{array}{cccc}
1 & 0 & -2 & 1 \\
0 & 1 & -3 & 2 \\
0 & 0 & 0 & 0
\end{array}\right]
\Rightarrow
\begin{aligned}
x-2 z&=1 \\
y-3 z&=2
\end{aligned}
\Rightarrow
\begin{aligned}
z&=t \\
y&=2+3 t \\
x&=1+2 t
\end{aligned}
$$

$$
\{(1+2 t, 2+3 t, t) \mid t \in \mathbb{R}\}
$$

### Homogenous Equations

* Each eqn. equals $O$.

### Not Homogenous

* Given $n$ points & find poly function with highest degree $n-1$. eg. 3 points will have highest $x^2$

$$
a_{0}+a_{1}x +a_{2} x^{2}+\ldots+a_{n-1} x^{n-1}=y_{1}
$$

$$
\begin{array}{l}
(1,2),(-1,3),(2,7) \\
a_{0}+a_{1} x+a_{2} x^{2}=y
\end{array}\\
\Rightarrow
\begin{array}{l}
a_{0}+a_{1}+a_{2}=2 \\
a_{0}-a_{1}+a_{2}=3 \\
a_{0}+2 a_{1}+4 a_{2}=7
\end{array}\\
$$

$$
\Rightarrow
\left[\begin{array}{cccc}
1 & 1 & 1 & 2 \\
1 & -1 & 1 & 3 \\
1 & 2 & 4 & 7
\end{array}\right]
$$

$$
\begin{aligned}
\operatorname { rref } &\Rightarrow a_{0}=\frac{2}{3}, a_{1}=-\frac{1}{2}, a_{2}=\frac{11}{6} . \\
&\Rightarrow \frac{2}{3}-\frac{1}{2} x+\frac{11}{6} x^{2}=y
\end{aligned}
$$

#### Steps

1. Write general eqn
2. Sub. points into $x$ & $y$
3. Solve for $a$ values (using $\operatorname{rref}$)
4. Plug into general equation. Answer in terms of $x$ & $y$

---

* If you have both all zeros in last row and also at same time more unknowns than eqns. then have to use 2 parametric variables.
* If just one more extra var. then use rref relation instead of equations

## Computer Inverse of a Product

$$
(AB)^{-1} = B^{-1}A^{-1}
$$

## Find Inverse of a Matrix Using No Calculator

#### Steps

1. Attach Identity Matrix to the end
2. Do rref
3. Inverse will be on right. (Identity matrix on left)

$$
\underbrace{A^{-1}}_{2\times 2 \text{matrix}} = \frac{1}{ad - bc} \left[ \begin{array}{rr}
    d & -b \\
    -c & a
\end{array} \right]
$$
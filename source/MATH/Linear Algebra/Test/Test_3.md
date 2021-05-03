---
notecard: true
---

**Definition of a Transformation:**

Transformation is a function.
The function $T$:$v {\rightarrow} w$ called linear transformation of $v$ into $w$ when following properties true for all $\vec{u}$ & $\vec{w}$ in $v$ & scalar $c$.  
$T(\vec{u}+\vec{v})=T(\vec{u})+T(\vec{v})$  
$T(c\vec{u})=c T(\vec{u})$  
$v$ is the domain of $T$, $w$ is the codomain of $T$

2 simple transformations:  
1. zero trans.: $T(\vec{v})=\vec{0}$ for all $\vec{v}$.  
2. Identity trans.: $T(\vec{v})=\vec{v}$ for all $\vec{v}$.

*Properties:*
1. $T(\vec{0})=\vec{0}$  
2. $T(-\vec{v})=-T(\vec{v})$  
3. $T(\vec{u}-\vec{v})=T(\vec{u})-T(\vec{v})$  
4. If $\vec{v}=c_1 \vec{v}_1+\cdots+c_n \vec{v}_n$ then $T(\vec{v})=T(c_1 \vec{v}_1+\cdots+c_n \vec{v}_n)=c_1 T(\vec{v}_1) + \cdots + c_n T(\vec{v}_n)$

Let $A$ be an $m\times n$ matrix.
Function $T$ defined by $T(\vec{v})=A\vec{v}$ is a linear transformation from $\mathbb{R}^n$ into $\mathbb{R}^m$

**Dot Product**: If $\vec{u}=(u_1,u_2)$, $\vec{v}=(v_1, v_2)$, then $\vec{u}\cdot\vec{v}=u_1 v_1 + u_2 v_2$ (always a scalar).
If $\mathbb{R}^n$: $\vec{u}\cdot\vec{v}=u_1 v_1 + \cdots + u_n v_n$

**Inner Product**: If given $\left< \vec{u}, \vec{v} \right>=a_0 u_1 v_1 + \cdots + a_n u_n v_n$, use in place of dot product (Non-Euclidean)

*Cauchy-Schwarz Inequality*: If $\vec{u}$ & $\vec{v}$ vectors in $R^n$ then $|\vec{u}\cdot\vec{v}|\leq\norm{\vec{u}}\norm{\vec{v}}$

*Triangle Inequality*: If $\vec{u}$ and $\vec{v}$ vectors in $\mathbb{R}^n$ then $\norm{\vec{u}+\vec{v}}\leq\norm{\vec{u}}+\norm{\vec{v}}$

*Vectors in $\mathbb{R}^n$*:
Length of a vector in $\mathbb{R}^n$: $\norm{\vec{v}}=\sqrt{v_1^2+\cdots+v_n^2}$
Distance between 2 vectors: $d(\vec{u},\vec{v})=\norm{\vec{u}-\vec{v}}$

*Properties of Length*:
1. $\norm{\vec{u}}\geq 0$  
2. $\norm{\vec{u}}=0$ iff $\vec{u}=\vec{0}$  
3. $\norm{c\vec{u}}=|c|\norm{\vec{u}}$

*Properties of Distance*:
1. $d(\vec{u},\vec{v})\geq 0$  
2. $d(\vec{u},\vec{v})=0$ iff $\vec{u}=\vec{v}$  
3. $d(\vec{u},\vec{v})=d(\vec{v},\vec{u})$

$\norm{\vec{v}}\geq 0$, $\norm{\vec{v}}=0$ iff $\vec{v}$ is the zero vector.

**Cross Product**:
1. $\vec{u}\times \vec{v} = - ( \vec{v} \times \vec{u})$  
2. $\vec{u} \times \vec{0} = \vec{0} \times \vec{u} = \vec{0}$  
3. $\vec{u} \times  \vec{v}$ is orthogonal to both $\vec{u}$ & $\vec{v}$  
4. $\vec{u}$ & $\vec{v}$ are parallel iff $\vec{u} \times \vec{v} = \vec{0}$

**Unit Vectors**:
Unit vector in direciton of $\vec{v}$: $\vec{u}=\frac{\vec{v}}{\norm{\vec{v}}}$.
Has length $1$ in direction of $\vec{v}$.
Same as normalizing.

**Angle Between Two Vectors**:
$\cos{\theta} = \frac{\vec{u}\cdot\vec{v}}{\norm{\vec{u}\norm{\vec{v}}}$
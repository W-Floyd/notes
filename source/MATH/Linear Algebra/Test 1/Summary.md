# Test 1

## Topics

Chapters 1, 2, and 3

1.  Augmented matrices - write system of equation from the matrix, write
    matrix from system.

2.  Solve system of equations - be sure solution is written in proper
    set notation.

3.  Computer inverse of a product

4.  Find inverse of a matrix using the non-calculator procedure (you may
    use RREF if needed).

5.  Solve a system using inverses.

6.  Use a determinant to find: a. equation of a line, b. equation of a
    plane

7.  Use properties of determinants.

8.  Find all values for a matrix to be singular.

## Augmented Matrices

Write system of equation from the matrix, write matrix from system.

### Definition

#### Augmented Matrix

A coefficient matrix, where the final column is what each line is equal
to.

### System to/from Matrix

$$
\begin{bmatrix}[r]
    3 & -2 & 4  & 1 \\
    1 & 1  & -2 & 3 \\
    2 & -3 & 6  & 8 \\
\end{bmatrix}
\Leftrightarrow
\begin{aligned}
    3x&-2y&+4z&=1\\
    x&+y&-2z&=3\\
    2x&-3y&+6z&=8
\end{aligned}
$$

## Solve system of equations

Be sure to show steps:

### Example 1

$$
\begin{aligned}
    3x&-2y&+4z&=1\\
    x&+y&-2z&=3\\
    2x&-3y&+6z&=8
\end{aligned}
\Rightarrow
\begin{bmatrix}[r]
    3 & -2 & 4  & 1 \\
    1 & 1  & -2 & 3 \\
    2 & -3 & 6  & 8 \\
\end{bmatrix}
\Rightarrow
\operatorname{rref}\left(...\right)
\Rightarrow
\begin{bmatrix}[r]
    1 & 0 & 0  & 0 \\
    0 & 1 & -2 & 0 \\
    0 & 0 & 0  & 1 \\
\end{bmatrix}\Rightarrow\text{No Solution}
$$

### Example 2

$$
\begin{aligned}
    x&-2y&+3z&=9\\
    -x&+3y&&=-4\\
    2x&-5y&+5z&=17
\end{aligned}
\Rightarrow
\begin{bmatrix}[r]
    1 & -2 & 3 &  9 \\
   -1 &  3 & 0 & -4 \\
    2 & -5 & 5 & 17 \\
\end{bmatrix}
\Rightarrow
\operatorname{rref}\left(...\right)
\Rightarrow
\begin{bmatrix}[r]
    1 & 0 & 0 &  1 \\
    0 & 1 & 0 & -1 \\
    0 & 0 & 1 &  2 \\
\end{bmatrix}
\Rightarrow
\boxed{
\begin{aligned}
    x&=1\\
    y&=-1\\
    z&=2
\end{aligned}
}
$$

## Inverse of a product

The inverse of two products is the reverse order of the two constituent
elements inverted.

$$
(A B)^{-1}=B^{-1} A^{-1}
$$

## Inverse of a matrix (without calculator, with RREF)

Augment the matrix with the identity matrix, then
$\operatorname{rref}(\dots)$ the result, giving you the inverse.

$$
A^{-1} = \operatorname{rref} \left[ \begin{array}{r|r}
    A & I_n\\
\end{array}\right]
$$

## Solve a system using inverse

Recall

## Equations of lines and planes from determinants

## Using Properties of Determinants

## Find all values for a matrix to be singular

## Equations

$$
\begin{aligned}
    \left[ A^{-1} \right]^{-1}&=
\end{aligned}
$$

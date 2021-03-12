# Prompt

![](./darth_file.jpg)

Luke Skywalker is in a duel with Darth File, and in order to compromise
his armour he must heat it up to a temperature of $T_1$. Find the heat
diffusion equation and boundary conditions for the lightsaber given the
following assumptions:

-   Heat diffusion is happening only in the radial direction
-   Heat generation is uniform
-   $k$ is constant
-   The system is steady state

Do not solve.

# Solution

$$
\left. \frac{\partial T}{\partial r} \right|_{r=0} = 0
$$

Due to uniform heat generation throughout the object, the gradient of
the temperature distribution must be $0$ at the center.

$$
T\left( r=r_1 \right) = T_1
$$

We are given $T_1$.

$$
\frac{1}{r} \frac{\partial}{\partial r} \left( r \frac{\partial T}{\partial r}\right) + \frac{\dot{e}}{k} = 0
$$

Cylindrical coordinate system simplified by constant $k$, steady state,
and one dimension.

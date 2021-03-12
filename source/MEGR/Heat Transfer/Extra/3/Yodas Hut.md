# Problem Statement

On the swamp planet of Dagobah, Yoda's clay hut must be kept cool in the sweltering heat.
The outside temperature of his hut is at $T_\mathrm{outer}=40^\circ \mathrm{C}$, and the inside surface temperature is $T_\mathrm{inner}=21^\circ \mathrm{C}$.
Assume his hut to be a half sphere, with an internal radius $r_\mathrm{inner}=2 \mathrm{~m}$, a clay wall thickness of $t_\mathrm{wall}=10 \mathrm{~cm}$, a stagnant air gap width of $t_\mathrm{air}=5 \mathrm{~cm}$, and a second clay wall of the same $t_\mathrm{wall}=10 \mathrm{~cm}$ thickness.
The heat transfer coefficients of the clay wall is given as $k_\mathrm{wall}=0.03 \frac{\mathrm{~W}}{\mathrm{m} \cdot \mathrm{K}}$, and is $k_\mathrm{air}=0.026 \frac{\mathrm{~W}}{\mathrm{m} \cdot \mathrm{K}}$ for the air.

Find the rate of heat transfer through the walls of his hut.

# Solution

## Assumptions

* One dimensional heat transfer
* The wall is thin enough that the effects of the problem being spherical are minimal
* The area through which the heat travels through each material is taken to be halfway between the inner and outer surfaces

## Working

We can summarize our given values as follows:

$$
\begin{aligned}
    T_\mathrm{outer}&=40^\circ \mathrm{C}\\
    T_\mathrm{inner}&=21^\circ \mathrm{C}\\
    r_\mathrm{inner} &= 2 \mathrm{~m}\\
    t_\mathrm{wall} = L_\text{wall, outer} = L_\text{wall, inner} &=10 \mathrm{~cm}\\
    t_\mathrm{air}&=5 \mathrm{~cm}\\
    k_\mathrm{wall}&=0.03 \frac{\mathrm{~W}}{\mathrm{m} \cdot \mathrm{K}}\\
    k_\mathrm{air}&=0.026 \frac{\mathrm{~W}}{\mathrm{m} \cdot \mathrm{K}}
\end{aligned}
$$

The area of each material must first be found.

We know the area of a sphere to be:

$$
A_\mathrm{sphere} = 4 \pi r^2
$$

We can calculate the following areas, given that we use the surface halfway between the bounds of each material:

$$
\begin{aligned}
    A_\text{wall, outer} &= \frac{1}{2} \cdot 4 \pi \left( 2+0.1+0.05+\frac{0.1}{2} \right)^2 = 30.4106 \mathrm{~m}^2\\
    A_\text{air gap} &= \frac{1}{2} \cdot 4 \pi \left( 2+0.1+\frac{0.05}{2} \right)^2 = 28.3725 \mathrm{~m}^2\\
    A_\text{wall, inner} &= \frac{1}{2} \cdot 4 \pi \left( 2+\frac{0.1}{2} \right)^2 = 26.4051 \mathrm{~m}^2
\end{aligned}
$$

The thermal resistivity of each segment is given below:

$$
\begin{aligned}
    R_\text{wall, outer} &= \frac{t_\mathrm{wall}}{k_\text{wall} \cdot A_\text{wall, outer}}\\
    R_\text{air} &= \frac{t_\text{air}}{k_\text{air} \cdot A_\text{air}}\\
    R_\text{wall, inner} &= \frac{t_\mathrm{wall}}{k_\text{wall} \cdot A_\text{wall, inner}}
\end{aligned}
$$

The total thermal resistance is:

$$
\begin{aligned}
    R_\text{total} &= R_\text{wall, outer} + R_\text{air} + R_\text{wall, inner}\\
    &= \frac{t_\mathrm{wall}}{k_\text{wall} \cdot A_\text{wall, outer}} +
    \frac{t_\text{air}}{k_\text{air} \cdot A_\text{air}} +
    \frac{t_\mathrm{wall}}{k_\text{wall} \cdot A_\text{wall, inner}}\\
    R_\mathrm{total} &= 0.304 \frac{\mathrm{K}}{\mathrm{W}}
\end{aligned}
$$

We also know that the heat transfer through a given thermal resistance is given as:

$$
\begin{aligned}
    \dot{Q} &= \frac{\Delta T}{R_\mathrm{total}}
\end{aligned}
$$

and the temperature difference in this case is:

$$
\Delta T = 40 - 21 = 19 \mathrm{~K}
$$

Hence:

$$
\begin{aligned}
    \dot{Q} &= \frac{19}{0.304}\\
    !Aboxed{\dot{Q}}{=}{62.5764 \mathrm{~W}}
\end{aligned}
$$
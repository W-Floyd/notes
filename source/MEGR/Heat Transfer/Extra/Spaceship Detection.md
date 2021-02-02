# Prompt

WALL-E has just been launched from the Axiom in a life-pod, roughly modeled as a sphere with radius $r=2m$. He has accidentally disabled all radio signal, so EVE must track his heat signature. Her sensors require at least $0.0001 \frac{\mathrm{W}}{\mathrm{m}^2}$ to detect him. The built-in heaters in the pod result in a heat flux of $1 \frac{\mathrm{kW}}{{m}^2}$ on the outer surface of the ship. From what distance away could EVE detect WALL-E?

# Solution

The surface area of the ship may be calculated as follows:

$$
A_\mathrm{sphere} = 4 \pi r^2
$$

The total power output of the ship may be calculated by:

$$
\begin{aligned}
    P &= q \cdot A\\
    \text{where:}\\
    P &= \text{Power} \left( W \right)\\
    q &= \text{Heat flux}\left( \frac{W}{m^2} \right)\\
    A &= \text{Surface area} \left( m^2 \right)
\end{aligned}
$$

The total power through the surface of a sphere of any radius around the ship remains constant.
Therefore, we can say:

$$
\begin{aligned}
P_1 &= P_2\\
q_1 \cdot A_1 &= q_2 \cdot A_2\\
q_1 \cdot \left( \cancel{4 \pi} r_1^2 \right) &= q_2 \cdot \left( \cancel{4 \pi} r_2^2 \right)\\
q_1 \cdot r_1^2 &= q_2 \cdot r_2^2\\
r_2^2 &= \frac{q_1\cdot r_1^2}{q_2}\\
r_2 &= \sqrt{\frac{q_1\cdot r_1^2}{q_2}}\\
r_2 &= \sqrt{\frac{1 \cdot 1000 \cdot \left( 2 \right)^2}{0.0001}}\\
!Aboxed{r_2}{=}{6324.6 \mathrm{m}}
\end{aligned}
$$

![Life-pod](./Spaceship Detection.jpeg)
4 problems:

-   Pipe flow
-   Similitude
-   Buckingham Pi
-   Hydraulic.

# Reynolds Number

$$
R e=\rho \frac{V L}{\mu}
$$

$$
\begin{aligned}
\rho &= \text{Fluid density}\\
\mu &= \text{Fluid viscosity}\\
V &= \text{Typical or "Characteristic" velocity of the flow}\\
L &= \text{Typical or "Characteristic" size scale of the flow}\\
\end{aligned}
$$

If the Reynolds number is "large", viscous effects will be negligible,
but will still have important consequences, at least in most of the
flow; if the Reynolds number is small, viscous effects will be dominant.
Finally, if the Reynolds number is neither large nor small, no general
conclusions can be drawn.

# Internal Flow Characteristics

![](!imgdir/4ff50d19295079c8404ba41dbaadcfd719485342.png)

## Roughness for Pipes of Common Engineering Materials

$$
\begin{array}{|lll|}
\hline
{\text { Pipe }} & \text { Roughness, e} \\
& {\text { Feet }} & {\text { Millimeters }} \\
\hline \text { Riveted steel } & 0.003-0.03 & 0.9-9 \\
\text { Concrete } & 0.001-0.01 & 0.3-3 \\
\text { Wood stave } & 0.0006-0.003 & 0.2-0.9 \\
\text { Cast iron } & 0.00085 & 0.26 \\
\text { Galvanized iron } & 0.0005 & 0.15 \\
\text { Asphalted cast iron } & 0.0004 & 0.12 \\
\text { Commercial steel or wrought iron } & 0.00015 & 0.046 \\
\text { Drawn tubing } & 0.000005 & 0.0015 \\
\hline
\end{array}
$$

## Laminar Flow

Under normal conditions, transition to turbulence occurs at
$\operatorname{Re} \approx 2300$ for flow in pipes. This is not a hard
rule, but approximate, under most circumstances.

Higher density leads to a sooner transition to turbulence.\
Lower viscosity leads to a sooner transition to turbulence.

$$
\frac{L}{D} \simeq 0.06 \frac{\rho \bar{V} D}{\mu}
$$

where $\bar{V} \equiv Q / A$ is the average velocity (because flow rate
$Q=A \bar{V}=A U_{0}$, we have $\left.\bar{V}=U_{0}\right) .$ Laminar
flow in a pipe may be expected only for Reynolds numbers less than 2300
. Thus the entrance length for laminar pipe flow may be as long as

$$
L \simeq 0.06 \operatorname{ReD} \leq(0.06)(2300) D=138 D
$$

### Friction Factor

$$
f_{\text {laminar }}=\frac{64}{R e}
$$

## Turbulent Flow

If the flow is turbulent, enhanced mixing among fluid layers causes more
rapid growth of the boundary layer. Experiments show that the mean
velocity profile becomes fully developed within 25 to 40 pipe diameters
from the entrance. However, the details of the turbulent motion may not
be fully developed for 80 or more pipe diameters. We are now ready to
study laminar internal flows (Part A), as well as laminar and turbulent
flows in pipes and ducts (Part B). For these we will be focusing on what
happens after the entrance region, i.e., fully developed flows.

# Pipe Flow

## Head Loss

$$
\frac{p_1-p_2}{\rho}+\frac{V_1^2-V_2^2}{2}+g\left(z_1-z_2\right) = \sum\left(f\frac{L}{D}\frac{V^2}{2}\right)+\sum K_L \frac{V^2}{2}
$$

Where:

$$
\begin{aligned}
f &= \text{Friction Factor} \\
K &= \text{Loss Coefficient} \\
\end{aligned}
$$

There are equations for friction factor, or pull from Moody diagram.

Loss coefficient is for a given joint, find in table.

### Minor Loss Coefficients for Pipe Entrances

![](!imgdir/3a971b00b29c60c164b33711d4242970ab66e6d3.png)
![](!imgdir/bbdd9d7f5c715b2006067498442cbbe9bb19aa99.png)

### Representative Loss Coefficients for Fittings and Valves

![](!imgdir/963902e83fe1de7780b25753ac80f719790c6ed7.png)

### Loss Coefficients (K) for Gradual Contractions: Round and Rectangular Ducts

![](!imgdir/e37588739cf89a148e681b246050c202382b900a.png)

# Colebrook Equation

$$
\frac{1}{\sqrt{f}} = -2.0 \log \left(\frac{e / D}{3.7}+\frac{2.51}{\operatorname{Re} \sqrt{f}}\right)
$$

where $e = \text{Roughness}$, find in tables, $D = \text{Diameter}$

# Noncircular Ducts

$$
D_{h} \equiv \frac{4 A}{P}
$$

$A$ is cross-sectional area, and $P$ is wetted perimeter,

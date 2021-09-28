---
notesheet: true
multicols: 3
fontsize: 6
---

$$
\begin{aligned}
    \text{Normal Force} &= N\\
    \text{Shear Force} &= V\\
    \text{Torsional Moment or Torque} &= T\\
    \text{Bending Moment} &= M\\
\end{aligned}
$$

# Normal Stress

$$
    \sigma=\frac{N}{A}
$$

$\sigma=$ Average normal stress at any point on the cross-sectional area  
$N=$ Internal resultant normal force, which acts through the centroid of the cross-sectional area.  
$A=$ Cross-sectional area of the bar where $\sigma$ is determined


## Nominal/Engineeering Stress

$$
\sigma=\frac{P}{A_{0}}
$$

# Shear Stress

$$
    \tau_{\text{avg}}=\frac{V}{A}
$$

$\tau_{\text{avg}}=$ Average shear stress at the section, which is assumed to be the same at each point on the section.  
$V=$ Internal resultant shear force on the section determined from the equations of equilibrium  
$A=$ Area of the section

Note: Average shear and normal stress are approximate only, as internal loadings vary.

# Factor of Safety

$$
F.S. =\frac{F_{\text {fail}}}{F_{\text {allow}}}
$$

Where $F$ may also be $\sigma$ or $\tau$

# Strain

$$
\begin{aligned}
\epsilon_{\text{avg}} &=\frac{L-L_{0}}{L_{0}}=\frac{\Delta L}{L_{0}} \\
\epsilon &= \lim _{\Delta s \rightarrow 0} \frac{\Delta s^{\prime}-\Delta s}{\Delta s}
\end{aligned}
$$

Unitless, it's a ratio.

## Nominal/Engineering Strain

$$
    \epsilon = \frac{\delta}{L_{0}}
$$

$\delta=$ &= Change in specimen's gage length  
$L_{0}=$ Specimen's gage length (original)  

# Shear Strain

$$
\gamma=\frac{\pi}{2}-\theta
$$

Change in angle between two perpendicular line segments (unit radians)

# Hooke's Law

$$
    \sigma = E\epsilon
$$
$E=$ Modulus of elasticity (Young's Modulus). Slope of straight line section on the stress-strain diagram.

# Axially Loaded Member

$$
\begin{aligned}
\delta &=\int_{0}^{L} \frac{N(x) d x}{A(x) E(x)} \\
\delta &=\text { Displacement of one point on the bar relative to the other point } \\
L &=\text { Original length of bar } \\
N(x) &=\text { Internal axial force at the section, located a distance } x \text { from one end } \\
A(x) &=\text { Cross-sectional area of the bar expressed as a function of } x \\
E(x) &=\text { Modulus of elasticity for the material expressed as a function of } x
\end{aligned}
$$


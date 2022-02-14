---
title: "Bike Analysis #2"
subtitle: "MEGR 4443\\linebreak Dr. Davis"
documentclass: article
date: "09-17-2021"
author: "William Floyd"
include-before: |
    \newpage
header-includes: |
    \usepackage{fancyhdr}
    \pagestyle{fancy}
    \fancyfoot[LO,LE]{William Floyd}
    \fancyfoot[CE,CO]{Bike Analysis \#2}
    \fancyfoot[RE,RO]{Pg. \thepage}
---

# Problem Statement

Riders of high quality mountain bikes often provide their own pedals, as such, it is common for cheap pedals or no pedals to be provided with the bike. In our case we have cheap pedals made of nylon with a steel spindle contained inside. If a 200 lb rider is using the bike, how much of a reduction in deflection could they expect if they upgraded the pedal?

# Assumptions

We shall assume standard gravity.

!EQDefine(g)(g)(9.81)(!_mpsq)

$$
\begin{aligned}
    !AGiven(g)\\
\end{aligned}
$$

We shall also assume that the mass of the pedal (shaft and pedal) itself has negligible effect on the deflection, and that the plastic pedal has minimal effect on the deflection of the shaft (due to a much lower Modulus of Elasticity).

# Working

!define(fig_ped_dim)(Figure 1)

![Pedal Dimensions](!imgdir/8fa90584f9df2c317404fd2a5ee976bd45de8ba5.png)

From Table A-9, the maximum displacement of the shaft is given by:

$$
y_{\max }=-\frac{w l^{4}}{8 E I}
$$

From Table A-23, $E=200!_gpa$

From Table A-18, the moment of inertia of the shaft is given by:

$$
I_{x}=I_{y}=\frac{\pi D^{4}}{64}
$$

where our shaft diameter is $D=0.0135$.

For our situation, $w$ is given by:

$$
w = \frac{F_\text{Rider}}{0.08}
$$

This may then be substituted:

$$
\begin{aligned}
    y_{\max }&=-\frac{\frac{F_\text{Rider}}{0.08} \cdot 0.08^{4}}{8 \cdot \frac{\pi D^{4}}{64} }\\
    &= \frac{64 F_\text{Rider}}{ \pi \cdot 15625 \cdot E \cdot D^4}
\end{aligned}
$$

and then solved using material, force ($200 \mathrm{~lbf} = 889.6 !_n$), and dimension values:

$$
\begin{aligned}
    y_{\max \text{, steel}}&=\frac{44 \cdot 889.6}{ \pi \cdot 15625 \cdot 200 \cdot 10^9 \cdot 0.0135^4}\\
    &= 0.174607 !_mm
\end{aligned}
$$

For carbon fiber, the modulus is: $E=500!_gpa$, and thus the same shaft would deflect:

$$
\begin{aligned}
    y_{\max \text{, carbon fiber}}&=\frac{44 \cdot 889.6}{ \pi \cdot 15625 \cdot 500 \cdot 10^9 \cdot 0.0135^4}\\
    &= 0.069843 !_mm
\end{aligned}
$$
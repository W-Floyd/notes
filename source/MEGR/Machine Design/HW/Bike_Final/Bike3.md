---
title: "Bike Analysis #3"
subtitle: "MEGR 4443\\linebreak Dr. Davis"
documentclass: article
date: "10-15-2021"
author: "William Floyd"
include-before: |
    \newpage
header-includes: |
    \usepackage{fancyhdr}
    \pagestyle{fancy}
    \fancyfoot[LO,LE]{William Floyd}
    \fancyfoot[CE,CO]{Bike Analysis \#3}
    \fancyfoot[RE,RO]{Pg. \thepage}
---

# Problem Statement

The bike is an AMP Research B4 Mercedes-Benz Police Mountain Bike F3. If a $100 \mathrm{~lb}$ load is placed on the rack and a $200 \mathrm{~lb}$ rider is resting all their load on the seat, determine the safety factor of buckling for the lower support. The lower support is the white metal welded piece that is holding the seat post to the frame.

# Assumptions

The profile of the lower support may be simplified as follows:

![](!imgdir/85552db8a67551fba643ac04e967b4a4858f5613.jpg)

The weight of the rider is centered over the saddle, and the weight of the cargo on the rack is centered 8 inches horizontally across from the welded end of the lower support.

The mass of the frame and saddle are taken to be negligible.

# Known

The metal is known to be 6013 T6 aluminum, with a proof strength of $350 !_gpa$ ([referansmetal.com](referansmetal.com))

# Solution

The loads may be broken up as below:

![](!imgdir/a628f70778d695f6ed4ec45c6ab259137652c9d9.jpg)

The sum of moments are:

$$
\begin{aligned}
    \sum M_A = 0 &= F_{B_{y}} \cdot 5 - 200 \cdot \left( 5 + 5 \cdot \cos{41.2\degree} + 17 \sin{16.5\degree} \right) \\
    & - 100 \cdot \left( 5 + 5 \cdot \cos{41.2\degree} + 8 \right) + F_{B_{x}} \cdot 5 \cdot \sin{51.3\degree} \\
    \sum M_B = 0 &= - F_{A_{y}} \cdot 5 - 200 \cdot \left( 5 \cdot \cos{41.2\degree} + 17 \sin{16.5\degree} \right) \\
    & - 100 \cdot \left( 5 \cdot \cos{41.2\degree} + 8 \right) - F_{A_{x}} \cdot 5 \cdot \sin{51.3\degree} \\
\end{aligned}
$$

and the sum of forces:

$$
\begin{aligned}
    \sum F_x = 0 &= F_{B_{x}} + F_{A_{x}}\\
    \sum F_y = 0 &= F_{B_{y}} + F_{A_{y}} - 200 - 100
\end{aligned}
$$

solving:

...

Once the components of the force in the lower support are found, they may be rotated to find the parallel and perpendicular components.

$$
\begin{aligned}
    F_{B_{x'}} &= \sqrt{F_{B_{x}}^2 + F_{B_{y}}^2} \cdot \cos{\left(\arctan{\left(\frac{F_{B_{y}}}{F_{B_{x}}}\right)}-41.2\degree \right)}\\
    F_{B_{y'}} &= \sqrt{F_{B_{x}}^2 + F_{B_{y}}^2} \cdot \sin{ \left( \arctan{\left(\frac{F_{B_{y}}}{F_{B_{x}}}\right)}-41.2\degree \right)}\\
\end{aligned}
$$

We can say that $F_{B_{x'}}$ is $P$.

***

For the profile of the support, the moment of inertia is found as follows, given the simplification stated above:

$$
\begin{aligned}
    I &= \int_{0}^1 \int_{0}^{0.08} y^2 dy dx\\
    &= 1.7067 \cdot 10^{-4} !_in^4
\end{aligned}
$$

the area is also found easily to be:

$$
\begin{aligned}
    A &= 1 \cdot 0.08 !_in^2\\
    &= 0.08 !_in^2
\end{aligned}
$$

This yields a $k$ value:

$$
\begin{aligned}
    k &= \sqrt{\frac{I}{A}}\\
    &\approx 0.046 !_in
\end{aligned}
$$

Choosing, $C=2$ (due to pinned force and fixed end opposite), $P_{cr}$ may be found.
$l$ is known to be $2.5 !_in$.

$$
\begin{aligned}
    \frac{P_{\mathrm{cr}}}{A}&=\frac{C \pi^{2} E}{(l / k)^{2}}\\
    P_{\mathrm{cr}} &= A \frac{C \pi^{2} E}{(l / k)^{2}}\\
    &= 0.08 !_in^2 \cdot \frac{2 \cdot \pi^2 \cdot 350 \cdot 10^9 !_pa}{(2.5 / 0.046)^2}\\
    &= 27139.7 !_lbf
\end{aligned}
$$
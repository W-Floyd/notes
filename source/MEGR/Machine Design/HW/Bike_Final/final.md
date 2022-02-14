---
title: "Bike Analysis Final Report"
subtitle: "MEGR 4443\\linebreak Dr. Davis"
documentclass: article
date: "11-19-2021"
author: "William Floyd"
include-before: |
    \newpage
header-includes: |
    \usepackage{fancyhdr}
    \pagestyle{fancy}
    \fancyfoot[LO,LE]{William Floyd}
    \fancyfoot[CE,CO]{Bike Analysis Final Report}
    \fancyfoot[RE,RO]{Pg. \thepage}
---

# Bike Problem #1

## Problem Statement

Assuming that the total force of a rider will be the sum of the force on the pedals, $F$, force on the handlebars, $H$, and seat, $B$. Determine the following forces as a function of rider forces:

* The vertical force acting on the front and rear wheels
* Compression force being applied to the rear suspension spring.
* The force in the fork

## Assumptions

For the sake of this problem, using a rider weight of $w$, we shall assume that $c_H \cdot w$ of the rider's weight goes through the handlebars ($H$), $c_F \cdot w$ through the pedals ($F$), and $c_b \cdot w$ through the seat ($B$).
We shall also assume that the force through the pedals is equally balanced and so may be taken to pass through the center of the chain ring. We shall also neglect to include mass of the bike.

Additionally, it us unclear as to what "the force in the fork" means exactly - the force in the front wheel is taken to be equal to this.

## Working

### Force on wheels

The bike may be roughly drawn as shown below.

![Bike with force positions](./Bike1/bike.png)

Taking the point about the chain ring ($F$) as a datum, the horizontal displacements of the other four forces were measured to be as follows:

!EQDefine(x_R)(xr)(-17)(!_in)
!EQDefine(x_S)(xs)(25.5)(!_in)
!EQDefine(x_B)(xb)(-10)(!_in)
!EQDefine(x_H)(xh)(19)(!_in)

$$
\begin{aligned}
    !AGiven(xr)\\
    !AGiven(xs)\\
    !AGiven(xb)\\
    !AGiven(xh)\\
\end{aligned}
$$

As the bike is not rotating, the sum of these moments is going to be equal to $0$, thus:

$$
\begin{aligned}
    \sum M_F = 0 &= (!xs_v) \cdot S + (!xh_v) \cdot (-H) + (!xb_v) \cdot (-B) + (!xr_v) \cdot R\\
    0 &= 25.5S - 19H + 10B - 17R
\end{aligned}
$$

Substituting in the known relationships between the rider's mass and the forces $H$, $B$, and $F$, we can then say:

$$
\begin{aligned}
    0 &= 25.5S - 19H + 10B - 17R\\
    0 &= 25.5S - 19\cdot w \cdot c_H +10\cdot w \cdot c_B -17R\\
    0 &= 25.5S + w(-19\cdot c_H + 10 \cdot c_B ) - 17R\\
\end{aligned}
$$

We also know that the sum of forces $S$ and $R$ will be equal to the rider's weight, thus:

$$
    w = R + S
$$

We now have two unknowns and two equations.
Solving for $R$ first, we substitute $S$:

!define(r_coeff)(24.1/42.5)

$$
\begin{aligned}
     0 &= 25.5(mg-R) -1.4mg -17R\\
     0 &= 25.5mg -25.5R -1.4mg - 17R\\
     0 &= 24.1mg - 42.5R\\
     R &= \frac{24.1mg}{42.5}\\
     R &= !mathr(!r_coeff)(3) mg\\
     !Answer(R)(=)(!mathr(!r_coeff*!g)(3) m !_n)
\end{aligned}
$$

We can then use this to solve for $S$ also:

!define(s_coeff)(!math(1-!r_coeff))

$$
\begin{aligned}
    mg &= R + S\\
    S &= mg - R\\
    S &= mg - !mathr(24.1/42.5)(3)mg\\
    S &= !mathr(1-24.1/42.5)(3)mg\\
    !Answer(S)(=)(!mathr(!s_coeff*!g)(3) m !_n)
\end{aligned}
$$

Thus the forces on the front and rear wheels have been found.

### Force on Spring

The rear suspension is shown below.

![Rear suspention](./Bike1/bike_spring.png)

!EQDefine(x_{AR})(xar)(-2)(!_in)
!EQDefine(y_{AR})(yar)(1.5)(!_in)
!EQDefine(x_{AD})(xad)(18)(!_in)
!EQDefine(y_{AD})(yad)(10)(!_in)
!EQDefine(x_{AC})(xac)(17)(!_in)
!EQDefine(y_{AC})(yac)(0)(!_in)

The distances between the points were measured to be as follows:

$$
\begin{aligned}
    !AGiven(xar)\\
    !AGiven(yar)\\
    !AGiven(xad)\\
    !AGiven(yad)\\
    !AGiven(xac)\\
    !AGiven(yac)\\
\end{aligned}
$$

Knowing that member $AC$ is pinned on both ends, it is only possible for forces to act longitudinally.
There may be both horizontal and vertical components at $D$, and will not necessarily act along $RD$.

![Rear suspension with force positions](./Bike1/bike_spring_forces.png)

The spring force will be the component of the force $D$ that acts along $RD$.

In order to determine reaction forces at $D$ and $C$, the overall system must be analyzed once again, as seen below.

![Partial bike with reaction forces only](./Bike1/bike_reaction.png)

Summing forces vertically:

$$
\begin{aligned}
    \sum F_x = 0 &= -B + D_y - F - H + S\\
\end{aligned}
$$

We can shortcut this by noticing that $D_y=R$, which was found earlier.
Also easy to identify is the relationship $C=-D_x$.

Moving back to Figures 2 and 3, we can say that $A=C$, which in turn means that $A=-D_x$
At this stage, we must only sum moments to find the magnitude of $A$ and $D_x$.
Summing about $D$ will make the problem easiest in this case:


$$
\begin{aligned}
    \sum M_D = 0 &= -A \cdot !yad_f - R \cdot (!yad_f-!yar_f)\\
    A &= \frac{-R \cdot (!yad_f-!yar_f)}{!yad_f}\\
    A &= \frac{!mathr(-24.1/42.5)(3) mg \cdot (!yad_v-!yar_v)}{!yad_v}\\
    A &= !math(-(24.1/42.5)*(!yad-!yar)/!yad) mg \\
    A &= !mathr(-!g*(24.1/42.5)*(!yad-!yar)/!yad)(3) m !_n
\end{aligned}
$$

knowing $A$, we can also say $D_x = !mathr(!g*(24.1/42.5)*(!yad-!yar)/!yad)(3) m !_n$.

!define(dx_coeff)(!math((24.1/42.5)*(!yad-!yar)/!yad))

We now know the components of the force - we must rotate this force to determine the $RD$ component.
First, let us find the angle of the line $RD$:

!define(theta_rd)(!math(math.atan((!yad-!yar)/(!xad-(!xar)))))

$$
\begin{aligned}
    \theta_{RD} &= \arctan \left(\frac{!yad_v-!yar_v}{!xad_v-(!xar_v)}\right)\\
    \theta_{RD} &= !mathr(!theta_rd)(3)
\end{aligned}
$$

next, let us find the angle of the combined force $D$:

!define(theta_d)(!math(math.atan((!r_coeff)/((24.1/42.5)*(!yad-!yar)/!yad))))

$$
\begin{aligned}
    \theta_{D} &= \arctan \left(\frac{D_y}{D_x}\right)\\
    \theta_{D} &= \arctan \left(\frac{!mathr(!r_coeff)(3)}{!math((24.1/42.5)*(!yad-!yar)/!yad)}\right)\\
    \theta_{D} &= !mathr(!theta_d)(3)
\end{aligned}
$$

to find the $x'$ component of $D$ (that is, the spring force) may be done as follows:

!define(dxp_coeff)(!math(math.cos(!theta_d-!theta_rd)*(!dx_coeff^2 + !r_coeff^2)^0.5))

$$
\begin{aligned}
    D_{x'} &= \cos(\theta_D-\theta_{RD}) \cdot D\\
    &= \cos(\theta_D-\theta_{RD}) \cdot \sqrt{D_x^2 + D_y^2}\\
    &= \cos(!mathr(!theta_d)(3)-!mathr(!theta_rd)(3)) \cdot \sqrt{m^2 g^2 !mathr(!dx_coeff^2 + !r_coeff^2)(3)}\\
    &= \cos(!mathr(!theta_d-!theta_rd)(3)) \cdot !mathr((!dx_coeff^2 + !r_coeff^2)^0.5)(3) m g\\
    D_{x'} &= !mathr(!dxp_coeff)(3) mg\\
    !Answer(D_{x'})(=)(!mathr(!g*!dxp_coeff)(3) m !_n)\\
\end{aligned}
$$

### Force in the Fork

I am unsure as to what this part of the problem is asking for, as this would seem to be the same as the front wheel force:

$$
\begin{aligned}
    !Answer(F_{\text{Fork}})(=)(!mathr(!s_coeff*!g)(3)m !_n)
\end{aligned}
$$

The force will be divided by $2$ as it passes through each side of the fork.

$$
\begin{aligned}
    !Answer(F_{\text{Fork, side}})(=)(!mathr(!s_coeff*!g/2)(3)m !_n)
\end{aligned}
$$


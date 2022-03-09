---
author: William Floyd
date: 2022-03-09
include-before: |
  \newpage
title: "Exam 1"
subtitle: "Nav Systems
  (EEGR5923)\\linebreak Dr. Green\\linebreak"
---

# Conceptual Questions

## 1

*What do accelerometers sense?*

Accelerometers sense specific force.

## 2

*What do gyroscopes sense?*

Gyroscopes sense angular rate.

## 3

*What acceleration results from **moving** with respect to a rotating reference frame?*

Coriolis.

## 4

*If you are moving due North at the equator, what is the acceleration from question 3?*

The coriolis effect will result in an eastward acceleration.

## 5

*Draw and label the flow chart of the four major steps of the inertial navigation equations with its inputs and outputs for the ECEF frame.*

![](!imgdir/WhatsApp Image 2022-03-09 at 11.15.10 AM.jpeg)

## 6

*List five reference frames used in this class.*

* ECEF
* Body
* NED (navigational)
* Inertial
* Wander Azimuth

## 7

*Write $\left(\omega \times\right)^3$ and $\left(\omega \times\right)^4$ in terms of $\omega \times$ and $\left(\omega \times\right)^2$*

$(\omega \times)^3 = - ||\omega||^2(\omega\times)$

$(\omega \times)^4 = - ||\omega||^2(\omega\times)^2$

## 8

*What improvement is made in the precision attitude update compared to the basic version, i.e. what assumption is removed?*

An improvement in attitude update is gained when no longer assuming a power-series expansion that is truncated.

By using the Rodrigues’ formula, a 3rd or 4th order approximation may be found, with an error much less than existing gyro bias.

## 9

*What improvement is made in the precision specific force transformation compared to the basic version, i.e. what assumption is removed?*

An improvement in specific force transformation is found when no longer assuming the average of two coordinate transformation matrices.

## 10

*What mechanism causes Schuler oscillations and what is the nominal period of the Schuler oscillation?*

Schuler oscillations are a result of a position error.
A false acceleration is sensed in the opposite direction to the position error due to true gravity, thus aiding to correct it.

The nominal period of Schuler oscillation is $\tau_s = 5,974 \text{ seconds}$.

## 11

*Why do INS systems experience vertical channel instability, and what can be done to mitigate it?*

As gravity changes as distance from the center of the earth changes, so too does the perceived acceleration.
A positive height error then results in an underestimation of gravity, as that acceleration acts in the direction opposite the height was measured from.

In order to mitigate this, an INS must be aided by other navigation sensors.
GNSS systems, as well as barometric readings (themselves combined with atmospheric models) allow correcting vertical measurements. 

## 12

*What is plumb bob gravity?*

Plumb bob gravity is the combination of gravitational acceleration and normal acceleration - that is, the vertical drawn by a hanging mass.

\newpage

# Gregg County Airport


*The Gregg County Airport has a runway with the start and end locations of latitude and longitude of:*

$$
(L, \lambda, h)_{s t a r t}=\left(32^{\circ} 23^{\prime} 27.66 \mathrm{~N}, 94^{\circ} 43^{\prime} 5.67 \mathrm{~W}, 111 \mathrm{~m}\right)
$$

$$
(L, \lambda, h)_{\text {end }}=\left(32^{\circ} 22^{\prime} 25.88^{\prime \prime} \mathrm{N}, 94^{\circ} 41^{\prime} 49.73^{\prime \prime} \mathrm{W}, 111 \mathrm{~m}\right)
$$

## 1

### a

*Determine the ECEF position*

$$
\begin{aligned}
&R_{0}=6378137 \mathrm{~m}\\
&e=0.0818191908425\\
&R_{E}(L)=\frac{R_{0}}{\sqrt{1-e^{2} \cdot \sin ^{2}(L)}}\\
&\operatorname{dmsToRad}(d, m, s)=\frac{\left(d+\frac{m}{60}+\frac{s}{3600}\right) \cdot \pi}{180}\\
&L_{\text {Start }}=\operatorname{dmsToRad}(32,23,27.66)\\
&\lambda_{\text {Start }}=\operatorname{dmsToRad}(94,43,5.67)\\
&h_{\text {Start }}=111 \mathrm{~m}\\
&L_{\text {End }}=\operatorname{dmsToRad}(32,22,25.88)\\
&\lambda_{\text {End }}=\operatorname{dmsToRad}(94,41,49.73)\\
&h_{\text {End }}=111 \mathrm{~m}\\
&x_{e b}^{e}(L, \lambda, h)=\left(R_{E}(L)+h\right) \cdot \cos (L) \cdot \cos (\lambda)\\
&y_{e b}^{e}(L, \lambda, h)=\left(R_{E}(L)+h\right) \cdot \cos (L) \cdot \sin (\lambda)\\
&z_{e b}^{e}(L, \lambda, h)=\left(\left(1-e^{2}\right) \cdot R_{E}(L)+h\right) \cdot \sin (L)\\
&r_{e b \text { Start }}^{e}=\left[\begin{array}{l}
x_{e b}^{e}\left(L_{\text {Start }}, \lambda_{\text {Start }}, h_{\text {Start }}\right) \\
y_{e b}^{e}\left(L_{\text {Start }}, \lambda_{\text {Start }}, h_{\text {Start }}\right) \\
z_{e b}^{e}\left(L_{\text {Start }}, \lambda_{S t a r t}, h_{\text {Start }}\right)
\end{array}\right]=\left[\begin{array}{c}
-443445.1411 \mathrm{~m} \\
5.372780465 \times 10^{6} \mathrm{~m} \\
3.397183513 \times 10^{6} \mathrm{~m}
\end{array}\right]\\
&r_{e b E n d}^{e}=\left[\begin{array}{c}
x_{e b}^{e}\left(L_{E n d}, \lambda_{E n d} h_{E n d}\right) \\
y_{e b}^{e}\left(L_{E n d}, \lambda_{E n d} h_{E n d}\right) \\
z_{e b}^{e}\left(L_{E n d}, \lambda_{E n d}, h_{E n d}\right)
\end{array}\right]=\left[\begin{array}{c}
-441550.4945 \mathrm{~m} \\
5.373959174 \times 10^{6} \mathrm{~m} \\
3.395576369 \times 10^{6} \mathrm{~m}
\end{array}\right]
\end{aligned}
$$

### b

*Define a NED coordinate system with origin at the start location, i.e the $C_E^N$ rotation matrix. What are the coordinated of the end location?*

### c

*Calculate the length of the runway.*

### d

*Calculate the true heading of the runway ($90^\circ$ is east, $180^\circ$ is south, etc.)*

### e

*What is the difference in the vertical vector at the end of the runway compared to the beginning, expressed in degrees, minutes, and seconds of arc.*

## 2

*Compute the gravitation, centripetal (normal), and Coriolis accelerations of an aircraft flying on a $3^\circ$ approach glideslope at the start of the runway at 200 meters of altitude and 150 Nmi/hr*

### a

*Express these values in body coordinates, assuming a $5^\circ$ pitch, heading aligned with the runway, and zero roll.*

### b

*Express these values in NED and ECEF coordinates.*
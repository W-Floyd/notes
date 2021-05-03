The theoretical relationship between torque and angular deflection may be calculated using the known relationship:

$$
\begin{aligned}
    \frac{\tau}{r} &= \frac{T}{J} = \frac{G\theta}{L}\\
    Where:&\\
    \tau &= \text{Shear Stress (Pa)}\\
    r &= \text{Radius (m)}\\
    T &= \text{Torque (Nm)}\\
    J &= \text{Polar Moment of Inertia (m}^4\text{)}\\
    G &= \text{Modulus of Rigidity (Pa)}\\
    \theta &= \text{Angle of twist}\\
    L &= \text{Length}
\end{aligned}
$$

We also know the polar moment of inertia of cylindrical objects to be:

$$
J = \frac{1}{2} \pi r^4
$$

Thus, angular deflection is given by:

$$
\theta = \frac{2 \cdot T \cdot L}{G \cdot \pi \cdot r^4}
$$

!define(G)(81000000000)
!define(R)(0.00635)
!define(L)(0.4191)

The rod used has a modulus of rigidity given by $G = !G \mathrm{~Pa}$, radius of $r = !R \mathrm{~m}$, and length of $L = !L \mathrm{~m}$

Therefore, the relationship between torque and angular deflection should be as follows:

$$
\begin{aligned}
    \theta &= \frac{2 \cdot T \cdot L}{G \cdot \pi \cdot r^4}\\
    &= \frac{2 \cdot T \cdot !L}{!G \cdot \pi \cdot !R^4}\\
    &= \frac{ T \cdot !luam(!L*2)}{!luar(!G*math.pi*(!R^4))(5)}\\
    \theta &= T \cdot !luar((!L*2)/(!G*math.pi*(!R^4)))(5)
\end{aligned}
$$

This relates $\mathrm{N}\cdot \mathrm{m}$ to $\mathrm{rad}$.
Converting to degrees gives:

!define(RatioT)(!luam((180/math.pi)*(!L*2)/(!G*math.pi*(!R^4))))

$$
\begin{aligned}
    \theta (\mathrm{rad}) &= T \cdot !luar((!L*2)/(!G*math.pi*(!R^4)))(5)\\
    \theta (\mathrm{deg}) &= T \cdot !luar((!L*2)/(!G*math.pi*(!R^4)))(5) \cdot \frac{180}{\pi}\\
    \theta_\text{theo.} (\mathrm{deg}) &= !luar(!RatioT)(5) \cdot T (\mathrm{Nm})
\end{aligned}
$$

!define(RatioE)(0.150767391272203)

Experimental analysis of the actual bar using static loading yielded a relationship of:

$$
\theta_\mathrm{exper.} (\mathrm{deg}) = !luar(!RatioE)(5) \cdot T (\mathrm{Nm})
$$

The difference between the theoretical and experimental values is $!luar(100*math.abs(!RatioT-!RatioE)/((!RatioE+!RatioT)/2))(2)$%.
This discrepancy likely came about due to human error while taking physical measurements, as well as specific material characteristics of the rod that may differ from literature. 
The results of the lab (below) are reasonable and within expected ranges.
The precision with which certain values were measured results in necessarily imprecise results - specifically the timing values from which angular deflection were inferred.
The smallest step in measurement ($0.05 \mathrm{ms}$) is $8\%$ of the largest measured value.
As such, a large difference between the measured values and reality may be present.
Overall, it was demonstrated in this lab how to empirically determine the power usage and output of the system using various methods, as well as how the efficiency of this system may vary with load.

!Rplot(torque-vs-angle)(Torque vs. Angle of Deflection)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
mydata <- read.csv("Torque.csv")
plot(mydata[, 1], mydata[, -1], pch = 20, xlab = "Torque (Nm)", ylab = "Angle (Degrees)")
curve(!RatioE*x, col = 1, add=TRUE, lty=2)
curve(!RatioT*x, col = 2, add=TRUE, lty=1)
legend(x = "topleft",          # Position
       legend = c("Experimental Data", "Linear Fit (Experimental)", "Theoretical Value"),  # Legend texts
       lty = c(0, 2, 1),           # Line types
       pch = c(20, NA, NA),
       col = c(1, 1, 2),           # Line colors
       lwd = 2)                 # Line width
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

!csv(Lab 10 Data.csv)

![](rpm_power.png)

![](rpm_efficiency.png)
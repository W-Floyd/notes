Newton's Law of Cooling
$$
\dot{Q}_\mathrm{conv} = h A_s ( T_s - T_\infty )
$$

Rayleigh Number:
$$
\begin{aligned}
    \mathrm{Ra}_L &= \mathrm{Gr}_L \mathrm{Pr} = \frac{g \beta ( T_s - T_\infty ) L_c^3}{v^2} \mathrm{Pr} = \frac{g \beta ( T_s - T_\infty)L_c^3}{v \alpha}\\
    &= \frac{g \frac{1}{T_\mathrm{surr}} ( T_s - T_\infty)L_c^3}{v^2} \mathrm{Pr}
\end{aligned}
$$

Nusselt Number:
$$
\begin{aligned}
    \mathrm{Nu} &= \frac{h L_c}{k} = C(\mathrm{Gr}_L \mathrm{Pr})^n = C ~ \mathrm{Ra}_L^n\\
    &= 2 + \frac{0.589 \mathrm{Ra}_D^{1/4}}{(1+(0.469/\mathrm{Pr})^{9/16})^{4/9}}
\end{aligned}
$$

!define(K)(0.02625)
!define(Pr)(0.7268)
!define(Pelectric)(11)
!define(Efficiency)(0.7)
!define(Diameter)(0.05)
!define(Area)(!math(math.pi * !Diameter^2))
!define(Qheat)(!math(!Pelectric * !Efficiency))
!define(G)(10)
!define(Lc)(!Diameter)
!define(Tinf)(22.22)
!define(Tavg)(50.27)
!define(V)(0.00001655)
!define(Tfilm)(!math((!Tinf+!Tavg)/(2)))
!define(Ra)(!math(((!G * ((1)/(!Tinf+273.15)) * (!Tavg - !Tinf) * !Lc^3)/(!V^2))*!Pr))
!define(Nu)(!math(2 + (0.589 * !Ra^0.25)/(((1 + (0.469/!Pr)^(9/16))^(4/9)))))
!define(Hnu)(!math(!Nu * (!K/!Lc)))
!define(Hnew)(!math(!Qheat/(!Area * (!Tavg - !Tinf))))

Values:

$$
\begin{aligned}
    k &= !K \frac{\mathrm{W}}{\mathrm{m}\cdot\mathrm{K}}\\
    \mathrm{Pr} &= !Pr \\
    \dot{Q}_\mathrm{heat} &= P_\mathrm{electricity} \cdot \eta_\mathrm{heat}\\
    &= !Pelectric \cdot !Efficiency\\
    &= !Qheat \mathrm{~W}\\
    \mathrm{Diameter} &= !Diameter \mathrm{~m}\\
    g &= !G \frac{\mathrm{m}}{\mathrm{s}^2}\\
    T_\infty &= !Tinf^\circ \mathrm{C}\\
    T_\mathrm{avg} &= !Tavg^\circ \mathrm{C}\\
    T_\mathrm{film} &= \frac{T_\infty + T_\mathrm{avg}}{2}\\
    &= !Tfilm^\circ \mathrm{C}\\
    L_c &= D\\
    &= !Lc \mathrm{~m}\\
    v &= !V \frac{\mathrm{m}^2}{\mathrm{s}}
\end{aligned}
$$

Results:

$$
\begin{aligned}
    h_\text{Nu} &= !mathr(!Hnu)(3) \frac{\mathrm{W}}{\mathrm{m}\cdot\mathrm{K}}\\
    h_\text{Newton} &= !mathr(!Hnew)(3) \frac{\mathrm{W}}{\mathrm{m}\cdot\mathrm{K}}\\
    \mathrm{Ra}_L &= !mathr(!Ra)(3)\\
    \mathrm{Pr} &= !Pr
\end{aligned}
$$

![](Graph.png)

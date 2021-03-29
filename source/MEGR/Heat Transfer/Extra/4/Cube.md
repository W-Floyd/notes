# Prompt

3D printed parts from LETU students are being recycled into pellets that could be roughly modeled as a $1 \mathrm{~cm}$ cubes, which must cooled down from $200^\circ \mathrm{C}$ to $100^\circ \mathrm{C}$ in an ambient temperature of $25^\circ \mathrm{C}$. With a heat convection rate of $5 \frac{\mathrm{W}}{\mathrm{m}^2 \cdot \mathrm{K}}$ and a heat conduction rate of $0.14 \frac{\mathrm{W}}{\mathrm{m} \cdot \mathrm{K}}$, the specific heat capacity is $1390 \frac{\mathrm{J}}{\mathrm{kg} \cdot \mathrm{K}}$ and density is $1052 \frac{\mathrm{kg}}{\mathrm{m}^3}$. Determine how long it takes for each cube to cool to the given temperature.

# Solution

$$
\begin{aligned}
    V &= 0.01\mathrm{~cm}^3\\
    T_i &= 200^\circ \mathrm{C}\\
    T(t) &= 100^\circ \mathrm{C}\\
    T_\infty &= 25^\circ \mathrm{C}\\
    h &= 5 \frac{\mathrm{W}}{\mathrm{m}^2 \cdot \mathrm{K}}\\
    k &= 0.14 \frac{\mathrm{W}}{\mathrm{m} \cdot \mathrm{K}}\\
    c_p &= 1390 \frac{\mathrm{J}}{\mathrm{kg} \cdot \mathrm{K}}\\
    \rho &= 1052 \frac{\mathrm{kg}}{\mathrm{m}^3}
\end{aligned}
$$

***

First, let us check if a lumped capacitance analysis is valid.

To do so, we must first find the characteristic length of the part:

$$
\begin{aligned}
    L_c &= \frac{V}{A}\\
    &= \frac{L^3}{6 \times L^2}\\
    &= \frac{L}{6}\\
    &= \frac{0.01}{6}\\
    L_c &= \frac{1}{600} \mathrm{~m}
\end{aligned}
$$

Then we are able to check the Biot number:

$$
\begin{aligned}
    \mathrm{Bi} &= \frac{h \cdot L_c}{k}\\
    &= \frac{5 \cdot \frac{1}{600}}{0.14}\\
    &= 0.0595
\end{aligned}
$$

This is less than $0.1$, so the lumped capacitance analysis is valid.

Using the following equations:

$$
\frac{T(t)-T_{\infty}}{T_{i}-T_{\infty}}=e^{-b t}
$$

$$
b=\frac{h A_{s}}{\rho c_{p} V}=\frac{h}{\rho c_{p} L_{c}}
$$

we can solve for the time required:

$$
\begin{aligned}
    b&=\frac{h A_{s}}{\rho c_{p} V}=\frac{h}{\rho c_{p} L_{c}}\\
    &= \frac{5}{1052 \cdot 1390 \cdot \frac{1}{600}}\\
    &= 0.002052
\end{aligned}
$$

$$
\begin{aligned}
    \frac{T(t)-T_{\infty}}{T_{i}-T_{\infty}}&=e^{-b t}\\
    \frac{100-25}{200-25}&=e^{-0.002052 \cdot t}\\
    !Aboxed{t}{=}{412.996 \mathrm{s}}
\end{aligned}
$$
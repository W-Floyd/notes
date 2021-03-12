```{=html}
<!-- In industry you will not usually be given unlimited time on equipment, nor will you be given step by step instructions on how to perform your test. Part of your ​individual​ pre-lab each week is to turn in a printed test plan for​​(you can still work together). In lab you are not limited to what you put on the test plan. But you should have an idea of what you are doing. Formatting is up to you but here are a few notes:

1. Test Procedures are typed and coherent.
2. They are specific to the lab. Don’t say “collect data”
3. They won’t be perfect, but they will be a good start to your lab report.
4. You need to have a goal.
5. You need to define what is “enough” -->
```
To find the Young's Modulus of a material, force and elongation
measurements are required while loading a test sample. The original
cross-sectional area of the test sample must also be known.

We know the following:

$$
\epsilon_{\text{avg}}=\frac{L-L_{0}}{L_{0}}=\frac{\Delta L}{L_{0}}
$$

$$
\sigma=E \epsilon
$$

$$
\sigma=\frac{F}{A}
$$

Thus, Young's Modulus may then be calculated as follows:

$$
\begin{aligned}
E &= \frac{\frac{F}{A}}{\frac{\Delta L}{L_{0}}}\\
\Aboxed{E&=\frac{F \cdot L_0}{A \cdot \Delta L}}
\end{aligned}
$$

For our test parts:

$$
\begin{aligned}
    A &= 0.09 \times 0.250 = 0.0225 \mathrm{~in}^2\\
    L_0 &= 1.25 \mathrm{~in}
\end{aligned}
$$

We must:

-   Use the MTI Tensile Test Rig to exert and measure force on the test
    specimen
-   Use the Epsilon Axial Extensometer to measure the elongation of the
    part (difference in length)
-   Repeat for 3 test specimens to reduce noise
-   Record data from these devices for each tensile test and include
    test piece features
    -   Measure and record area of necked portion of test piece after
        fracture
-   Use data to find Young's Modulus for each test sample
    -   Literature states:
        -   Peak stress of 3D printed PLA to be $6783, \mathrm{~psi}$
        -   Tensile Modulus of 3D printed PLA is $293000 \mathrm{~psi}$
        -   Tensile Strength at Yield $8840 \mathrm{~psi}$
        -   Useful:
            <https://prusament.com/media/2018/07/PLA_datasheet.pdf>
-   Estimate the true stress for each sample
    -   Generate a plot for one of the tests

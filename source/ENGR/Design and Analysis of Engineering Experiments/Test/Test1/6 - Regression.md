# 10.7

*The brake horsepower developed by an automobile engine on a dynamometer is thought to be a function of the engine speed in revolutions per minute (rpm), the road octane number of the fuel, and the engine compression. An experiment is run in the laboratory and the data that follow are collected:*

$$
\begin{array}{cccc}
\hline \begin{array}{c}
\text { Brake } \\
\text { Horsepower }
\end{array} & \text { rpm } & \begin{array}{c}
\text { Road } \\
\text { Octane } \\
\text { Number }
\end{array} & \text { Compression } \\
\hline 225 & 2000 & 90 & 100 \\
212 & 1800 & 94 & 95 \\
229 & 2400 & 88 & 110 \\
222 & 1900 & 91 & 96 \\
219 & 1600 & 86 & 100 \\
278 & 2500 & 96 & 110 \\
246 & 3000 & 94 & 98 \\
237 & 3200 & 90 & 100 \\
233 & 2800 & 88 & 105 \\
224 & 3400 & 86 & 97 \\
223 & 1800 & 90 & 100 \\
230 & 2500 & 89 & 104 \\
\hline
\end{array}
$$

## a

*Fit a multiple regression model to these data.*

$$
\boxed{
\text{BHP} = -266.0312 + 0.0312 \cdot \text{RPM} + 3.1348 \cdot \text{Octane} + 1.8674 \cdot \text{Compression}
}
$$

## b

*Test for significance of regression. What conclusions can you draw?*

The P-value for the given regression was found to be $0.0032$ - as such, **it is found to be significant.**

## c

*Based on t-tests, do you need all three regressor variables in the model?*

All components of the regression have a P-value less than $0.05$, thus they are all significant.

# 10.8

*Analyze the residuals from the regression model in Problem 10.7. Comment on model adequacy.*

***

Given that the Residual Standard Error of the regression model is found to be $8.81$, **I would find the model adequate** for the range of horsepower in question ($\approx 210-270 \text{~bhp}$)
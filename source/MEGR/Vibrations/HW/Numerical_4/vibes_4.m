clear %clears variables in workspace window
clc %clears command window

figure;
t = 0:0.01:10;
plot(t, exp(-0.02.*t).*(0.489.*sin(2.*t)+0.969.*cos(2.*t))+0.03125.*cos(10.*t+0.00422));
xlabel ("t");
title ("Function Response With Time");

figure;
t=0:0.01:10;
x=((-0.00406.*cos(18.849.*t))-((0.00119.*sin(18.849.*t))))+((exp(-t)).*((0.00406.*cos(16.58.*t))+(0.00258.*sin(16.58.*t))));
plot(t,x);
xlabel("t")
title("Problem 2")
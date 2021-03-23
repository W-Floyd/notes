clear all
close all
clc
format compact

x = -5:0.1:5;
x2 = linspace(1,5,100);

y = x.^2
z = exp(x)


figure()
hold on
plot(x,y,'k+') % whatever I want to write
plot(x,z,'m-.') % this is the exponential
ylabel('speed')
xlabel('Meatballs')
title('Meatball relativty')
legend('Thermo','Nuclear')
% zlabel('stuff')
plot3(x,y,z)

figure()
t = 0:pi/50:10*pi;
plot3(sin(t),cos(t),t);




% linear pendulum function
tspan = [0:0.1:20];
x0 = [1,0]

[t,x] = ode45('linearPendulum',tspan,x0);




clear all
close all
clc

format compact

x = 1:5 % 1 to 5 (increments of 1)
x1 = 1:0.1:5 % 1 to 5 by 0.1 (increments of 1)
x2 = linspace(1,5,100)

%y = x^2 % Cannot square a vector!
y = x1.^2 % Square each element of the vector

z = exp(x1)

figure()
hold on
plot(x1,y,'r')
plot(x1,z,'ko')
ylabel('speed')
xlabel('Meatballs')
title('Meatball relativity')
legend('Thermo','Nuclear')

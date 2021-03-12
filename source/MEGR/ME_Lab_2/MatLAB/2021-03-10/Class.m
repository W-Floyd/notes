clear all;
close all;
clc;

x0 = [0.2618,0];
tspan=[0:0.1:20];

[t,x]=ode45('linearPendulum', tspan,x0);

figure()
plot(t,x(:,1))

exceldata=[]


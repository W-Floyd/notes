clear all;
close all;
clc;
set(0,'DefaultFigureVisible','off');

tspan=[1:0.1:300];

[t1,x1]=ode45(@(t,x) linearPendulum(t,x,0.004067,0.125308,0), tspan, [12,-3]);
f1=figure()
hold on
plot(t1,x1(:,1),'b--')
plot(dlmread('1.csv', ',', 1, 1),'k-*-')
hold off
xlabel('Samples (@10Hz)')
ylabel('Angle (Degrees)')
title('Recorded Angle with Linear Approximation Fit (1)')
legend('Calculated Angle (1)','Recorded Angle (1)')
saveas(f1, '1.png', 'png');

[t2,x2]=ode45(@(t,x) linearPendulum(t,x,0.00507,0.12531,0), tspan,[6.98,3.7]);
f2=figure()
hold on
plot(t2,x2(:,1),'b--')
plot(dlmread('2.csv', ',', 1, 1),'k-*-')
hold off
xlabel('Samples (@10Hz)')
ylabel('Angle (Degrees)')
title('Recorded Angle with Linear Approximation Fit (2)')
legend('Calculated Angle (2)','Recorded Angle (2)')
saveas(f2, '2.png', 'png');

[t3,x3]=ode45(@(t,x) linearPendulum(t,x,0.002931,0.124428,0.85), tspan,[0,-5.8]);
f3=figure()
hold on
plot(t3,x3(:,1),'b--')
plot(dlmread('3.csv', ',', 1, 1),'k-*-')
hold off
xlabel('Samples (@10Hz)')
ylabel('Angle (Degrees)')
title('Recorded Angle with Linear Approximation Fit (3)')
legend('Calculated Angle (3)','Recorded Angle (3)')
saveas(f3, '3.png', 'png');

[t15,x15]=ode45(@(t,x) linearPendulum(t,x,0.006109,0.125313,0), tspan,[-11.28,-3]);
f15=figure()
hold on
plot(t15,x15(:,1),'b--')
plot(dlmread('15deg.csv', ',', 1, 1),'k-*-')
hold off
xlabel('Samples (@10Hz)')
ylabel('Angle (Degrees)')
title('Recorded Angle with Linear Approximation Fit (15 deg)')
legend('Calculated Angle (15 deg)','Recorded Angle (15 deg)')
saveas(f15, '15deg.png', 'png');

[t30,x30]=ode45(@(t,x) linearPendulum(t,x,0.003599,0.121008,0.7), tspan,[-29.61,0]);
f30=figure()
hold on
plot(t30,x30(:,1),'b--')
plot(dlmread('30deg.csv', ',', 1, 1),'k-*-')
hold off
xlabel('Samples (@10Hz)')
ylabel('Angle (Degrees)')
title('Recorded Angle with Linear Approximation Fit (30 deg)')
legend('Calculated Angle (30 deg)','Recorded Angle (30 deg)')
saveas(f30, '30deg.png', 'png');
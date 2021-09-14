% Problem 1.19, Intro. to Vibrations by Inman, 4th ed, p. 98
clear %clears variables in workspace window
clc %clears command window
for n = 1:3
 nsteps = input('input number of steps nsteps = ');
 x0 = input('input initial value of x = ');
 v0 = input('input initial value of velocity = ');
 wn = input ('input natural frequency of system = ');
 IC (n,:) = [n, x0, v0];
 data = zeros(2,2*nsteps);
 T = 2*pi/wn;
 tstep = T/nsteps;
 A = sqrt(x0^2 + (v0/wn)^2);
 phi = atan(wn*x0/v0);
 for steps = 1:2*nsteps
 time = (steps - 1)*tstep;
 x = A*sin(wn*time + phi);
 data(:, steps) = [time; x];
 end
 % figure
 plot(data(1,:), data(2,:),'-')
 hold on
 xlabel('time (s)')
 ylabel('theta (radians)')
end
title(['Problem 1.19'])
legend (['a. for x0 = ', num2str(IC(1, 2)), ' and v0 = ', num2str(IC(1, 3))], ['b. for x0 = ', num2str(IC(2, 2)), ' and v0 = ', num2str(IC(2, 3))], ['c. for x0 = ', num2str(IC(3, 2)), ' and v0 = ', num2str(IC(3, 3))])
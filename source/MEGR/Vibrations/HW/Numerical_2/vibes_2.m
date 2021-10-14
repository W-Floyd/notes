% Problem 1.54, Intro. to Vibrations by Inman
% This program solves a basic linear spring-mass system
% of the form mx" + cx' + kx = 0 given inputs of wn, zeta, and v0
% for various values of x0.
clear %clears variables in workspace window
clc %clears command window
%input initial values and initialize vectors
 nsteps = 100;
 v0 = 0;
 wn = 1;
 zeta = 0;
 x0 = [1];
 phi = zeros (1, length(x0));
 A = zeros (1, length(x0));
 data = zeros(7*(nsteps+1),5);
 T = 2*pi/wn; %calculate period
 tstep = T/nsteps; %calculate time interval
 
 %calculating values for each zeta
 for n = 1:length(x0)
 wd = wn*sqrt(1-zeta^2.)
 phi(1, n) = atan((x0(n)*wd)/(v0+zeta*wn*x0(n)))
 A(1,n) = sqrt(((v0 + zeta*wn*x0(n))^2. + (x0(n)*wd)^2.)/(wd^2.))
 for steps = 1:(7*(nsteps + 1))%should calculate 7 cycles
 time = (steps - 1)*tstep;
 x = A(1, n)*(exp(-zeta*wn*time))*(sin(wd*time + phi(1, n)));
 data (steps, 1) = zeta;
 data (steps, 4) = time;
 data (steps, 5) = x;
 data (steps, 2) = phi(1, n);
 data (steps, 3) = A(1, n);
 end
 
%plotting data
 plot(data(:,4), data(:,5),'-')
 hold on
 end
 
%labeling plot 
 xlabel('time (s)')
 ylabel('displacement (mm)')
 title(['Problem 1.55'])
hold off

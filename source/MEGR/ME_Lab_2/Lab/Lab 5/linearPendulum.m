function [xdot] = linearPendulum(t,x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
B1 = 1;
B2 = 10;
xdot(1) = x(2);
xdot(2) = -B1*x(2)-B2*x(1);


xdot = xdot';
end


function [xdot] = linearPendulum(t,x,B1,B2,o)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
% B1 = 0.0052; % decay
% B2 = 0.1255; % period
xdot(1) = x(2);
xdot(2) = -B1*x(2)-B2*(x(1).+o);

xdot = xdot';
end

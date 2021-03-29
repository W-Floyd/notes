clear all;
close all;
clc;
set(0,'DefaultFigureVisible','off');

% Initial Conditions
launchAngle = 90; % degrees
throwSpeed = 100 % mph
launchVel = 1.4667*throwSpeed; % ft/s
launchHeight = 4; %ft
simTimeStart = 0;
simTimeEnd = 10; %seconds
windSpeed = 100; %mph in direction of launch

z0 = [0,launchVel*cosd(launchAngle),launchHeight,launchVel*sind(launchAngle)];
time = [simTimeStart:0.01:simTimeEnd]; % s

[t,z] = ode45('BallTrajectory',time,z0',windSpeed);

% plotting the trajectory
f1 = figure()
plot(z(:,1),z(:,3))
ylabel('Y [ft]')
xlabel('X [ft]')
title('Trajectory')
axis([0,350,0,350])
saveas(f1, 'example.png', 'png');
clf;
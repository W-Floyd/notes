clear all;
close all;
clc;
set(0,'DefaultFigureVisible','off');

data=dlmread('data_launch.csv',',',1,0)

launch_speed=data(:,1)
distance=data(:,2)*0.3048
launch_angle=data(:,3)

launchHeight = 4; %ft
simTimeStart = 0;
simTimeEnd = 3; %seconds

for i = 1:rows(launch_speed)
  % Initial Conditions
  launchAngle = launch_angle(i); % degrees
  throwSpeed = launch_speed(i) % m/s
  launchVel = 0.44704*throwSpeed; % m/s

  z0 = [0,launchVel*cosd(launchAngle),launchHeight,launchVel*sind(launchAngle)];
  time = [simTimeStart:0.01:simTimeEnd]; % s

  [t,z] = ode45('BallTrajectory',time,z0');

  % plotting the trajectory
  f1 = figure()
  plot(z(:,1),z(:,3));
  hold on;
  plot(distance(i),0,"*k");
  ylabel('Y [m]')
  xlabel('X [m]')
  title(['Trajectory Trial ' num2str(i)])
  axis([0,12,0,8])
  saveas(f1, [ 'ball_' num2str(i) '.png' ], 'png');
  clf;
endfor
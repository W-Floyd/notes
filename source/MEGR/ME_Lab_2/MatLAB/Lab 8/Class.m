clear all;
close all;
clc;

load Panels_new.mat
% Third column is the length in inches
% Sixth column is the angle of each panel

WingWidth = 23.825; % In in
Rho = 0.0023769; % Slugs/ft^3
Rho = Rho/(12^3); % Slugs/in^3
Vel_inf = 100; % ft/s (madeup for now)
Vel_inf = Vel_inf*12; % in/s

WingAngle = 0;

PanelAngles = Panels(:,6);
PanelLengths = Panels(:,3);
PanelAreas = WingWidth*PanelLengths;

##Coefficients = ones(1,16);
Coefficients = [ 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ];
Coefficients = transpose(Coefficients);

DeltaP = Coefficients.*0.5.*Rho.*Vel_inf.^2;
PanelForces = DeltaP.*PanelAreas;

DragForces = PanelForces.*cosd(PanelAngles);
LiftForces = PanelForces.*sind(PanelAngles);

Drag = sum(DragForces);
Lift = sum(LiftForces);

DragReal = cosd(WingAngle)*Drag + sind(WingAngle)*Lift;
LiftReal = sind(WingAngle)*Drag + cosd(WingAngle)*Lift;


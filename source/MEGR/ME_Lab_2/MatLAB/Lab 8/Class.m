clear all;
close all;
clc;
set(0,'DefaultFigureVisible','off');

%airfoilPanels;

load Panels;
% Third column is the length in inches
% Sixth column is the angle of each panel

load variables;

f1 = figure(1)
title("Drag Coefficient vs Velocity (Pressure)")
xlabel('Wind Speed (m/s)') 
ylabel('Coefficient of Drag') 
line("xdata",[10,60], "ydata",[0.024,0.024], "linewidth", 1);
line("xdata",[10,60], "ydata",[0.028,0.028], "linewidth", 1);
line("xdata",[10,60], "ydata",[0.034,0.034], "linewidth", 1);
hold on
f2 = figure(2)
title("Lift Coefficient vs Velocity (Pressure)")
xlabel('Wind Speed (m/s)') 
ylabel('Coefficient of Lift')
line("xdata",[10,60], "ydata",[0.4,0.4], "linewidth", 1);
line("xdata",[10,60], "ydata",[0.85,0.85], "linewidth", 1);
line("xdata",[10,60], "ydata",[1.15,1.15], "linewidth", 1);
hold on

PanelAngles = Panels(:,6);
PanelLengths = Panels(:,3)*0.0254; % m
PanelAreas = WingWidth*PanelLengths;

for WingAngle = linspace(0,10,3)
  j=WingAngle/5+1;

  for Freq = linspace(20,60,3)

    k=Freq/20;
    
    data=dlmread([int2str(WingAngle) '-' int2str(Freq) '.csv'],',',1,0);
    Coefficients = data(1:16,4);

    Vel_inf = Freq*1.910080-0.853276; % mph
    Vel_inf = 0.44704*Vel_inf; % m/s

    DeltaP = Coefficients.*0.5.*Rho.*((Vel_inf).^2);
    PanelForces = DeltaP.*PanelAreas;

    DragForces = PanelForces.*cosd(PanelAngles);
    LiftForces = PanelForces.*sind(-PanelAngles);

    Drag = sum(DragForces);
    Lift = sum(LiftForces);

    DragReal = cosd(WingAngle)*Drag + sind(WingAngle)*Lift;
    LiftReal = sind(WingAngle)*Drag + cosd(WingAngle)*Lift;
    
    Lifts(j,k)=LiftReal;
    Drags(j,k)=DragReal;
    
    DragArea = cosd(WingAngle)*Height + sind(WingAngle)*ChordLength;
    LiftArea = cosd(WingAngle)*ChordLength;
    
    CoefficientDrag = 2 * DragReal / (Rho * DragArea * (Vel_inf^2));
    CoefficientLift = 2 * LiftReal / (Rho * LiftArea * (Vel_inf^2));
    
    CoefficientsDrag(j,k)=CoefficientDrag;
    CoefficientsLift(j,k)=CoefficientLift;
    Velocities(j,k)=Vel_inf;
  
  end

  figure(1)

  y1=CoefficientsDrag(j,:);
  x=Velocities(j,:);

  plot(x,y1,'r-+');
  text(x(1), y1(1), sprintf('%.0f°', WingAngle), 'Color', 'r', "horizontalalignment", 'right')
  
  
  y2=CoefficientsLift(WingAngle/5+1,:);

  figure(2)
  
  plot(x,y2,'b-+');
  
  text(x(1), y2(1), sprintf('%.0f°', WingAngle), 'Color', 'b', "horizontalalignment", 'right')
  
  meanDragCoeff(j)=mean(CoefficientsDrag(j,:))
  meanLiftCoeff(j)=mean(CoefficientsLift(j,:))
  
end

saveas(f1, 'pressure_drag.png', 'png');
saveas(f2, 'pressure_lift.png', 'png');

close all;
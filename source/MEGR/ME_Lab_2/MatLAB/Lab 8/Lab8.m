clear all;
close all;
clc;
set(0,'DefaultFigureVisible','off');

load variables;

data=dlmread('force.csv',',',1,0);

i=1;

f1 = figure(1)
title("Drag Coefficient vs Velocity (Force)");
xlabel('Wind Speed (m/s)');
ylabel('Coefficient of Drag');
line("xdata",[10,60], "ydata",[0.024,0.024], "linewidth", 1);
line("xdata",[10,60], "ydata",[0.028,0.028], "linewidth", 1);
line("xdata",[10,60], "ydata",[0.034,0.034], "linewidth", 1);
hold on;
f2 = figure(2);
title("Lift Coefficient vs Velocity (Force)");
xlabel('Wind Speed (m/s)');
ylabel('Coefficient of Lift');
line("xdata",[10,60], "ydata",[0.4,0.4], "linewidth", 1);
line("xdata",[10,60], "ydata",[0.85,0.85], "linewidth", 1);
line("xdata",[10,60], "ydata",[1.15,1.15], "linewidth", 1);
hold on;
f3 = figure(3);
title("Lift and Drag Coefficients vs Angle of Attack (Force)");
xlabel('Angle of Attack (Degrees)');
ylabel('Coefficient of Lift/Drag');
hold on;

for WingAngle = linspace(0,10,3)
  
  j=WingAngle/5+1;
  
  subdata = data(i:i+3,:);

  DragArea = cosd(WingAngle)*Height + sind(WingAngle)*ChordLength;
  LiftArea = sind(WingAngle)*Height + cosd(WingAngle)*ChordLength;
  
  for Freq = linspace(20,60,3)
    
    k=Freq/20;
    
    Vel_inf = Freq*1.910080-0.853276; % mph
    Vel_inf = 0.44704*Vel_inf; % m/s

    entry = subdata(Freq/20+1,:);
    
    DragOffset = entry(3);
    DragForce = entry(4)*4.448222; % Newtons
    DragVoltage = entry(5);
    LiftOffset = entry(6);
    LiftForce = entry(7)*4.448222; % Newtons
    LiftVoltage = entry(8);
    
    CoefficientDrag = 2 * DragForce / (Rho * DragArea * Vel_inf^2);
    CoefficientLift = 2 * LiftForce / (Rho * LiftArea * Vel_inf^2);
    
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

  i+=4;
  
  meanDragCoeff(j)=mean(CoefficientsDrag(j,:))
  meanLiftCoeff(j)=mean(CoefficientsLift(j,:))
  
end

figure(3)

plot(linspace(0,10,3), meanDragCoeff);
plot(linspace(0,10,3), meanLiftCoeff);
plot(linspace(0,10,3), [0.024 0.028 0.034]);
plot(linspace(0,10,3), [0.4 0.85 1.15]);
legend("Drag","Lift", "Literature Drag", "Literature Lift");

saveas(f1, 'force_drag.png', 'png');
saveas(f2, 'force_lift.png', 'png');
saveas(f3, 'force_coeff_angle.png', 'png');

close all;
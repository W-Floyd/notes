clear all;
close all;
clc;
set(0,'DefaultFigureVisible','off');

datasets=[ 'sphere'; 'ball'; 'cone'; 'cup' ];
offsets=[ 5.1; 5.1; 5.1; 5.1 ]
diameters=[ 3 7.51913 3 3] % in inches
areas=pi().*(0.0254*diameters).^2 % in m^2
datasets_name=cellstr(datasets)

for i = 1:rows(datasets)
  
  nd=datasets_name(i)
  name=char(nd)
  
  data=dlmread([ 'data_tunnel_' name '.csv' ],',',1,0)
  lit=dlmread([ 'literature_tunnel_' name '.csv' ],',',1,0)
  
  freq=data(:,1)
  pitot=data(:,2)
  strain=data(:,3)
  
  litcoeff=lit(:,2)
  
  force=strain.*4.44822.*3.65.*10.^3+offsets(i) % in Newtons
  
  velocity=0.44704*64.2543*sqrt(-pitot+0.125) % m/s
  
  area=areas(i)
  
  coeffs=(2.*force)./(1.225.*(velocity.^2).*area)
  
  coeff=mean(coeffs)
  
  f1 = figure()
  plot(velocity,coeffs);
  hold on
  text(30, coeff+0.05, sprintf('Cd = %.4f', coeff), 'Color', 'b')
  plot(velocity,litcoeff);
  text(30, coeff-0.05, sprintf('Cd = %.4f', mean(litcoeff)), 'Color', 'r')
  xlabel('Wind Speed (m/s)')
  ylabel('Drag Coefficient')
 legend ({"Recorded", "Literature"}, "location", "east");
  title([ 'Wind Speed vs. Drag Coefficient for ' name ])
  axis([0,60,0,1])
  saveas(f1, [ 'drag_' name '.png' ], 'png');
  clf;
  
endfor
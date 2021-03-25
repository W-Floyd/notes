clear all;
close all;
clc;
set(0,'DefaultFigureVisible','off');

xx=[0:0.1:50];
xx2=[-2.5:0.05:0.25];

data=dlmread('data.csv',',',1,0)

fan_freq=data(:,1)
pressure_difference_in_h2o=data(:,2)
pressure_difference=249.08890833333.*pressure_difference_in_h2o
voltage=data(:,3)

f1=figure()
ax = plotyy(fan_freq,pressure_difference,fan_freq,voltage)
xlabel('Fan Frequency (Hz)')
ylabel(ax(1),"Pressure Difference (Pa)")
ylabel(ax(2),"Pressure Transducer (V)")
title('Fan Frequency vs. Pressure Difference and Transducer Voltage')
grid on
grid minor on
saveas(f1, 'fan_vs_press_and_volt.png', 'png');
clf;

density=1.17732

velocity=sqrt((2.*pressure_difference)./(density))
velocity_mph=2.236936.*velocity

fit1=polyfit(fan_freq,velocity_mph,1)

f2=figure()
plot(fan_freq,velocity_mph,'k+')
hold on
plot(fan_freq,polyval(fit1,fan_freq),'--')
text(25, 40, sprintf('y = %f * x + %f', fit1(1), fit1(2)))
xlabel('Fan Frequency (Hz)')
ylabel("Velocity (mph)")
title('Fan Frequency vs. Air Velocity')
grid on
grid minor on
saveas(f2, 'fan_vs_velocity.png', 'png');
clf;

function sum_square_errors = model(p,x,y)
  % This is where we computer the sum of the square of the errors.
  % The parameters are in the vector p, which for us is a two by one.
  a=p(1);
  y_trial=a*sqrt(-x+0.125);  % y with the trial parameters.
  difference=y-y_trial;    % The difference between fit and experimental data
  sum_square_errors = sum(difference.^2);  % The sum of the squared errors
end

p0=[65.660 0.125]
p=fminsearch(@(x) model(x,voltage,velocity_mph), p0);

fit2=polyfit(voltage,velocity_mph,1)
fit3=p(1)*sqrt(-xx2+0.125)

f2=figure()
plot(voltage,velocity_mph,'k+')
hold on
plot(xx2,polyval(fit2,xx2),'b--')
plot(xx2,fit3,'r--')
text(-2.25, 120, sprintf('y = %.4f * x + %.4f', fit2(1), fit2(2)), 'Color', 'b')
text(-1, 75, sprintf('y = %.4f * sqrt(-x + 0.125)', p(1)), 'Color', 'r')
xlabel('Voltage (V)')
ylabel("Velocity (mph)")
title('Voltage  vs. Velocity')
grid on
grid minor on
saveas(f2, 'voltage_vs_velocity.png', 'png');
clf;
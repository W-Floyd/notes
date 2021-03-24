clear all;
close all;
clc;
set(0,'DefaultFigureVisible','off');

xx=[1:0.1:50];

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

density=1.1843

velocity=sqrt((2.*pressure_difference)./(density))
velocity_mph=2.236936.*velocity

coeff1=polyfit(fan_freq,velocity_mph,1)

f2=figure()

plot(fan_freq,velocity_mph)
plot(fan_freq,coeff1)
xlabel('Fan Frequency (Hz)')
ylabel("Velocity (mph)")
title('Fan Frequency vs. Air Velocity')
grid on
grid minor on
saveas(f2, 'fan_vs_velocity.png', 'png');
clear all
close all
clc

numUpPorts = 9;
numLowPorts = 7;
xp = [0,0.150,0.300,0.600,1.200,1.800,2.400,3.000,5.400,   0.240,0.360,0.600,1.200,1.800,3.000,5.150];

% station ordinates used for generating panels
usx = [0,0.075,0.150,0.300,0.450,0.600,0.900,1.200,1.500,1.800,2.400,3.000,3.600,4.200,4.800,5.400,5.700,6.000];
lsx = usx;
usy = [0,0.146,0.203,0.284,0.346,0.395,0.473,0.528,0.565,0.586,0.588,0.551,0.488,0.401,0.293,0.163,0.088,0.000];
lsy = [0,-0.086,-0.117,-0.149,-0.164,-0.172,-0.173,-0.164,-0.150,-0.136,-0.108,-0.084,-0.060,-0.039,-0.023,-0.013,-0.010,0];

% Panel Nodes 16 panels with 16 different pressures
Panels = [0.075,0.075;
    0.075, 0.225;
    0.225, 0.45;
    0.45, 0.9;
    0.9, 1.5;
    1.5, 2.1;
    2.1, 2.7;
    2.7, 4.2;
    4.2, 6;
    0.075, 0.3;
    0.3, 0.48;
    0.48, 0.9;
    0.9, 1.5;
    1.5, 2.4;
    2.4, 3.6;
    3.6, 6];

% assembling more information
for k = 1:length(Panels)
%     panel lengths
    if k <= numUpPorts
        Panels(k,4) = interp1(usx,usy,Panels(k,1));
        Panels(k,5) = interp1(usx,usy,Panels(k,2));
        if k == 1
            Panels(1,4) = -Panels(1,4);
        end
    else
        Panels(k,4) = interp1(lsx,lsy,Panels(k,1));
        Panels(k,5) = interp1(lsx,lsy,Panels(k,2));
    end
        Panels(k,3) = sqrt((Panels(k,1)-Panels(k,2))^2+(Panels(k,5)-Panels(k,4))^2);

    if k <= numUpPorts
        Panels(k,6) = asind( (Panels(k,4)-Panels(k,5))/Panels(k,3) ) +90; % +90 gives 
        %     angle pointing forward in the direction of the chord
    else
        Panels(k,6) = asind( (Panels(k,4)-Panels(k,5))/Panels(k,3) ) -90; % +90 gives 
        %     angle pointing forward in the direction of the chord
    end
    
    
end

save Panels Panels
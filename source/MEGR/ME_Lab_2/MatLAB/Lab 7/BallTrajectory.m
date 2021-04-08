function zdot = BallTrajectory (t,z)
  
  % Coefficients for a soccer ball
D = 0.190986; %diameter in m
M = 0.435; % mass in kg
V = 0.005482 % Volume in m^3
rho = M/V; % density in slugs/ft^3
g = 9.81; % acceleration due to gravity in ft/s^2
A_p = pi*D^2/4;
w = 6.4.*0.44704;

% !!!!!!!!!!!!!!!
C_D = 0.18; % DRAG COEFFICIENT, MODIFY THIS WITH YOUR VALUE!!!!!
% !!!!!!!!!!!!!!!
    
  
  zdot (1) = z (2);
  zdot (2) = -1 / (2 * M) * rho * A_p * C_D * ( z (2) - w) * abs( z (2) - w );
  zdot (3) = z (4);
  zdot (4) = -1 / (2 * M) * rho * A_p * C_D * z (4) * abs (z (4)) - g;
  zdot = zdot'; % Transpose
end


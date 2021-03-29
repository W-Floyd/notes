function zdot = BallTrajectory (t,z,w)
  
  % Coefficients for a soccer ball
D = 0.7; %diameter in ft.
M = 0.029; % mass in slugs
rho = 0.00234; % density in slugs/ft^3
g = 32.2; % acceleration due to gravity in ft/s^2
A_p = pi*D^2/4;

% !!!!!!!!!!!!!!!
C_D = 0.9; % DRAG COEFFICIENT, MODIFY THIS WITH YOUR VALUE!!!!!
% !!!!!!!!!!!!!!!
    
  
  zdot (1) = z (2);
  zdot (2) = -1 / (2 * M) * rho * A_p * C_D * ( z (2) - w) * abs( z (2) - w );
  zdot (3) = z (4);
  zdot (4) = -1 / (2 * M) * rho * A_p * C_D * z (4) * abs (z (4)) - g;
  zdot = zdot'; % Transpose
end


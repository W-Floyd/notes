clear all
close all
clc

% creating vectors
x = -5:5

figure() % talk to them about the argument of figure
plot(x,x.^2) % talk about the . operator

% showing more vector creation
x1 = -5:0.1:5;
x2 = linspace(-5,5,101);

figure()
hold on
plot(x1,x2,'r.',x1,x2.^2,'k--')
plot(x1,x2.^3,'b*')
hold off


xlabel('stuff')
ylabel('things')
title('figures without titles look bad')
legend('Even More STUFF','still more stuff','bob')
% axis([xmin,xmax,ymin,ymax])

figure()
Xvec = x1;
Yvec = x1+x2;
plot(Xvec,Yvec,'k-.')


% return


% matrix commands
A = [1,2,3,4;5,6,7,8]; % show that you can visualize in matlab.
B = [1 2 3;
    5 6 7];
C = [4;8];

% concatinate matricies (Note this works for other stuff as well)
B = [B,C] % note the fact that I overwrote the old B with this line
% now combine A and B to get a big square matrix

BigM = [A;B];
size(BigM)

%% This is a cell. show how you can execute things independently. 
FirstSecond = BigM(1,2) % first row , second column
%%%%% ! show the colon operator, how it can mean all of the colomns or rows
%%%%% ! show the 1:end termonology in a vector


% matrix multiplication 
Q = rand(4,2)

Z = BigM*Q
% try Q*BigM % notice that this will break! Get them familiar with the
% erros. 

% help  eig
[V,D] = eig(BigM);

% return
%% Back to vecotrs, using for loop
% alternative is sin(vector)
bob = [1,2,3,4,5,6,7,8,9,10]'; % show the transpose operator!
steve = -5:0.01:5;

for k = 1:length(steve)
    
    if steve(k) == 0
        display('steve got to zero!')
    end
    
    for kk = 1:length(bob)
        Matrix(k,kk) = bob(kk)*steve(kk); % note how the variable can grow in matlab
    end
           
end



%% Functions
% show the example function
[myRandMatrix] = meLab2_func(4,5);

%% Symbolics
syms x b a c 

f_x = (-b+(b^2-4*a*c))/(2*a)
C = solve(f_x,b)
simplify(C)
% return
b = 100;
subs(f_x)

% perform substitutions and you may need to perform conversions...



%% at the end
% show publishing, debugging, 


%% Regression for C_D lab
M = 0.975; %lbs
force = -[0,1*M,2*M,3*M,4*M,5*M,6*M,7*M,8*M];
volts = [-0.000877,-0.001139,-0.001402,-0.001665,-0.001929,-0.002194,-0.002459,-0.00272,-0.002993];
figure()
plot(volts,force,'r.')


%% ODE45 implementation
x0 = [1, 0];
tspan = [0:0.1:20];

[t,x] = ode45('NL_pendulum',tspan,x0);

figure()
subplot(2,1,1)
plot(t,x(:,1))
ylabel('position [rad]')
title('stuff')

subplot(2,1,2)
plot(t,x(:,2))
ylabel('velocity [rad/s]')
xlabel('time [s]')

% another implementation

y0 = [1,0]
tspan = [0:0.01:10];

[t,y] = ode45(@(t,y) [y(2);-10*sin(y(1))-y(2)], tspan, y0)


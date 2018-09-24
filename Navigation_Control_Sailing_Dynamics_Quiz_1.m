%% Sailbots Navigation Control/Sailing Dynamics Quiz 1
%% Author: Tyler Lum ENPH 3

%% Problem summary
% Produce a plot of the solution to the differential equation:
% x'(t) = exp(t)*sin(t) + t^2*log(t+1)
% 
% on the interval from [0, 5] with an initial condition x(0) = 2 using MATLAB’s ode45 or
% equivalent solver. (log here is natural log, in MATLAB log(1) is the equivalent to the
% natural log: ln(1)).

%% set up values
time_span = [0 5];
x_0 = 2;
f = @(t, x)(exp(t)*sin(t) + t^2*log(t+1));

%% solve with ode45 
[t, x] = ode45(f, time_span, x_0);

%% plot + improve
plot(t,x);
xlabel('t');
ylabel('x');
titlestr = sprintf('Sailbots Navigation Control/Sailing Dynamics Quiz 1 \n dx/dt = e^t*sin(t) + t^2*log(t+1)');
title(titlestr);
grid on;
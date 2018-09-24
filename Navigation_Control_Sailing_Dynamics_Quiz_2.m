%% Sailbots Navigation Control/Sailing Dynamics Quiz 2
%% Author: Tyler Lum ENPH 3

% Given a plant transfer function: G(s) = 0.01/(0.005s^2+0.062s+0.1001)
% 
% Design a PID controller (you can use the Control Toolbox directly in SIMULINK) so
% that the system has no overshoot and can track a step reference signal. Report your
% constants for P, I and D.
% Simulate the results in SIMULINK and produce a plot of a unit step
% response

%% setup transfer function
s=tf('s');
sys = 0.01/(0.005*s^2+0.062*s+0.1001);

pidtool(sys);

% from tuning for no overshoot, I got the following Gain values
% Kp = 14.3822
% Ki = 23.6395
% Kd = 0.96602
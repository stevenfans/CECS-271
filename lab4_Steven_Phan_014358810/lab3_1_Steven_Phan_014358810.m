% STEVEN PHAN 014358810
% Lab 3 Problem 1

close all; clc; 

syms x y;
% point
%x = pi/8;

% original function f(x)
f = (x * cos(x)) - (sin(x)/x);

% derivative of original function
f_deriv = diff(f);


% f(pi/8) 
fx = vpa(subs(f,x,pi/8));

% true derivative
true_deriv = vpa(subs(f_deriv,x,pi/8));

% step sizes
h = [0.2,0.02,0.002,0.0002,0.00002,0.000002,0.0000002];

% f(x+h)
f_x_plus_h = vpa(subs(f,x,(pi/8)+h));

% relative approximating error
rel_error = true_deriv - y;

% f(x-h)
f_x_sub_h = vpa(subs(f,x,(pi/8)-h));

% Forward Difference
forward = (f_x_plus_h - fx) ./ h;
% get relative appriximating error
forward_error = vpa(subs(rel_error,y,forward));


% display the headers
disp('FORWARD DIFFERENCE')
fprintf('%9s%17s%20s\n', 'Step Size', 'Approx. Value','Rel Approx.Error');
% disp the answers
A = [h; forward;forward_error];
fprintf('%0.7f    %0.7f        %0.7f\n', A)
fprintf('\n');

% Backward Difference
backward = (fx - f_x_sub_h) ./ h;
% get relatvie approximating error
backward_error = vpa(subs(rel_error,y,backward));

% display the headers
disp('BACKWARD DIFFERENCE')
fprintf('%9s%17s%20s\n', 'Step Size', 'Approx. Value','Rel Approx.Error');
% disp the answers
A = [h; backward;backward_error];
fprintf('%0.7f    %0.7f        %0.7f\n', A)
fprintf('\n')

% Central Difference
central = (f_x_plus_h - f_x_sub_h)./ (2.*h);
% get relative appriximating error
central_error = vpa(subs(rel_error,y,central));

% display the headers
disp('CENTRAL DIFFERENCE')
fprintf('%9s%17s%20s\n', 'Step Size', 'Approx. Value','Rel Approx.Error');
% disp the answers
A = [h; central;central_error];
fprintf('%0.7f    %0.7f        %3.7f\n', A)





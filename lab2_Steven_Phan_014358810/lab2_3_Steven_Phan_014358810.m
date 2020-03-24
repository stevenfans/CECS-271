% 7.6: If variable X is randomly distri. from 0<=X<=x. Find phi(x)

close all; clc; 
format short

%check if phi(1) = 0.34
test = phi_func(1);

% distr. 0<=x<=4 increments of 0.1
x = 0:0.1:4; 

% display the headers
fprintf('%10s%10s\n', 'x', 'phi(x)');

% calc the phi for all x steps
xPhi = phi_func(x);

disp([x' xPhi'])
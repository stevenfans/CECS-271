% STEVEN PHAN 014358810
clc; close all; clear all; 

% NOTE: for my calculations i round to the 6th decimal place

syms x

% original function 
f = cos(x) -(3*x);
% derivative of orginal function
df = diff(f);
tol = 0.0001; % tolerance
max = 10;
iteration = [1:max];

% Using Matlab built in function to find the root
mat_root = vpasolve(f,0);

% BISECTION METHOD
a = 0; b = 1; 
[root,err,x]=bisec(f,0,1,tol,max);
disp('BISECTION METHOD');
fprintf('%0s%23s%25s\n', 'Iteration', 'Rel Approx. Error','Approx Value of Root');
L = length(x); % get the length of x
A = [iteration; err; x];
fprintf('    %2.0f          %10.6f             %2.6f\n', A);
fprintf('\nROOT IS: %0.6f\n', root);
% calculate absolute true error
true_error = abs(mat_root - root);
fprintf('ABSOLUTE TRUE ERROR: %2.6f\n:', true_error);
fprintf('=====================================================================================\n')



% NEWTON RAPHSON METHOD
x0 = 1;  % initial guess
[root,fx,x]=newraph(f,df,x0,tol,max);
x_iter = [x0 x(1:end-1)]; % add x0 as the first element for x
disp('NEWTON RAPHSON METHOD')
fprintf('%0s%5s%25s%23s\n', 'Iteration', 'X', 'Function F(x)','Approx Value of Root');
A = [iteration;x_iter;fx;x];
fprintf('   %2.0f      %10.6f    %9.6f       %2.6f\n', A);
fprintf('\nROOT IS: %0.6f\n', root);
% calculate absolute true error
true_error = abs(mat_root - root);
fprintf('ABSOLUTE TRUE ERROR: %2.6f\n:', true_error);
fprintf('=====================================================================================\n\n')


% SECANT METHOD
x0 = 0; % prev
x1 = 1; % next
[root,fx,x]=secant(f,x0,x1,tol,max);
prev_x = [x0,x1, x(1:end-2)]; % hold previous x values
next_x = [x1, x(1:end-1)]; % holds the next x values

disp('SECANT METHOD');
fprintf('%0s%10s%11s%19s%23s\n', 'Iteration', 'Prev X', 'Next X', 'Function F(x)','Approx Value of Root');
A = [iteration;prev_x;next_x;fx;x];
fprintf('   %2.0f      %10.6f  %9.6f    %9.6f        %2.6f\n', A);
fprintf('\nROOT IS: %0.6f\n', root);
% calculate absolute true error
true_error = abs(mat_root - root);
fprintf('ABSOLUTE TRUE ERROR: %2.6f\n:', true_error);
fprintf('=====================================================================================\n\n')



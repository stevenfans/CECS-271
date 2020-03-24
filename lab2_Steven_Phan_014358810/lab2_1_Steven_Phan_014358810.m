% 6.3: Solve the system of linear equations

close all; clc;
format bank

% create matrices for variables
S = [2,-1,1;
     1, 1,1;
     3,-1,-1];
% create matrices for outcomes
P = [4;
     3; 
     1;];
 
% use division operator
x = mldivide(S,P);
% get the residual
res = (S*x)-P;
% find determinant of the variables
determinant = det(S);
% calculate the conditional esti with rcond
cond_esti = rcond(S);

fprintf('Equation Variables: x=%1.f, y=%1.f, z=%1.f \n', x(1,1),x(2,1),x(3,1));
fprintf('Equation Residuals: x=%1.f, y=%1.f, z=%1.f \n', res(1,1),res(2,1),res(3,1));
fprintf('Determinant: %0.f \n',determinant)
fprintf('Conditional Estimate: %0.f\n',cond_esti)
disp('ill conditioning is present')


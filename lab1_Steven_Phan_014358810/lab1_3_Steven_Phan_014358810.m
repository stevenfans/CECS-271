% problem 4.8
clc; close all; 

%initialize values
L = 10;    %10 meter long 
x = 0:0.01:L; 
T = 1000; %1000 N
W = 100; %load is 100 N/m
EI = 10000;
a_squared = T/EI; 
a = sqrt(a_squared); 

%plug values into function 
y = W*EI/(T*T)*...
    (cosh(a*(L/2-x))./cosh(a*L/2)-1)+...
    W*x.*(L-x)/(2*T);

%display the x vs y
figure 
plot(x,y); 
%label the figure
title("Problem 4.8"); 
xlabel("Length(x)"); 
ylabel("Deflection(y)");
% set the axis limits
xlim([0 10])
ylim([0 .75])
grid minor; 
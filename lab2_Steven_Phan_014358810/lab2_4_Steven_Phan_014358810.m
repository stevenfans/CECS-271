% Problem 8.3: Computing pi using archimedes
close all; clc; 
format bank

% starting variables
A = 1; 
N = 6; 

% display the headers
fprintf('%14s%14s%14s\n', 'N', 'P', 'E');

% follow archimedos algorithm 10 iterations
for i = 1:10
    N = 2*N;                    % replace N by 2N
    A = (2-(sqrt(4-(A)^2)))^(1/2);  % Replace A by (2-sqrt(4-A^2))^1/2
    L = N * A / 2;
    U = L / sqrt(1-(A^2/2));    
    P = (U+L)/2;                % esimate of pi
    E = (U-L)/2;                % estimate of error
    
    % disp the answers
    disp([N' P' E'],'%0.f')
end
    
    
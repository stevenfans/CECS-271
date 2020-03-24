% 7.6: Fibonacci sequence recursively

close all; clc; 
format short;

% want to see range from 0~20
n = [0:20];
y = n;

for i = 1:length(n)
    % calc fibonacci for every value from 0~20
    y(i) = Fibonacci(n(i));
end

% display the headers
fprintf('%15s%15s\n', 'Number', 'Fib Number');
% disp the answers
disp ([n' y'])
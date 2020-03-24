% Suppose you despot $50 in the back account every month for a year. Every
% month, after the deposit has been made, interest at the rate of 1% is 
% added to the balace: after one month the balace is $50.50, and after 
% two months it is $101.51. Write a program to compute and print the balance
% each month for a year.
clc; close all; format loose;

% initialize default values
deposit = 50; 
interest_rate = 0.01; 
month = (1:12);
balance = zeros(1,2);

% display the headers
fprintf('%15s%20s\n', 'MONTH', 'MONTH-END BALANCE');

% traverse array and get interest rate per month with desposits
balance(1) = deposit*(1+interest_rate); %initial value
 for i=2:12
     balance(i) = (balance(i-1)+(deposit))*(1+interest_rate);
 end
% display the bank values
disp([month' balance']);


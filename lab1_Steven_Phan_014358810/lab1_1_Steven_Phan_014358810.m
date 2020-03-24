
%  2.19 problem script 
clc; close all; 
%pretty sure this scripts gets close to pi with larger 
% numeric values
n = input ( 'Number of terms? ' ); 
s = 0;

k = 1:6;
s = sum(1./(k.^2));

disp(sqrt(6*s))
% x = sum(1./(k.^2))





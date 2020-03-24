clc; close all; 

syms x; 

f = (x^7) - 1000;

[r,e,x] = secant(f,2,3,0.0001,8)


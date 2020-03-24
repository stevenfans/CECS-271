clc; 
x = 0.7; 
n = 5; 
j = 1:6;
result = 1:6; 
fprintf('%15s%15s%10.1f%15s%15s\n', '# of terms', 'e^',x,'E_a','esp_a');
for k = 1:6
    result(k) = myTalorSeries(x,k); 
end
result; 
approxerror=diff(result);
approxerror=[0 approxerror]; 
relerror = approxerror./result; 
relerror=relerror *100;
disp([j' result' approxerror' relerror']); 
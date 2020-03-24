function y = myTalorSeries(x,n)
    temp = 0:n-1;
    y = sum((x.^temp)./factorial(temp)); 
end
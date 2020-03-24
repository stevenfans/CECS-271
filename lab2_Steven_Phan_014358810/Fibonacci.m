function y = Fibonacci(n)
    if n<0
        disp("wrong input")
        y = 0;
    elseif n==0
        y = 0;
    elseif n==1
        y = 1; 
    else
        y = Fibonacci(n-1)+Fibonacci(n-2);
    end
end
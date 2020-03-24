function y = phi_func(x)
    t = 1./ (1+0.3326 *x); 
    a = 0.4361836;
    b = -0.1201676; 
    c = 0.937298; 
    r= exp(-0.5 * x.^2)/sqrt(2*pi);
    y = 0.5-r.*(a*t+b*t.^2+c*t.^3);
end
    
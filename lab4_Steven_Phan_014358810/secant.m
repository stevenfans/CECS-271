function [root, fx, x] = secant(f, x0, x1, tol, maxIter)

    fx = [];
    x = [];
    X = sym('x');
    
    % Note: x1=xi and x0=xi-1
    for i=1:1:maxIter
        
        % f(xi)
        f_xi = vpa(subs(f,X,x1));
        
        % f(xi-1)
        f_xi_1 = vpa(subs(f,X,x0)); 
        
        % (xi-1 - xi)
        xi_1_xi = x0 - x1; 
        
        numerator   = f_xi * xi_1_xi;
        denominator = f_xi_1 - f_xi; 
        
        % Secant Method
        nxt_itr = x1 - (numerator/denominator);
        root = nxt_itr;
        
        % update vector of values of unction at each approximating 
        % value of x
        fx = [fx, f_xi];
        
        % vector of approximating value of the root
        x = [x, nxt_itr];
        
        % update the x values
        x0 = x1;
        x1 = nxt_itr;
        
        
        % check tolerance and break if its reached
        if root<tol
            break; 
        end
        
        
    end

end
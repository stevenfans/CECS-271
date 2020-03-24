function [root, fx, x] = newraph(f,df,x0,tol, maxIter)

    X = sym('x');
    fx = [];
    x =[];
    root = 0;

    for i=1:1:maxIter
        
        % place x in original function
        f_x =  vpa(subs(f,X,x0));
        % place x in the derivative of the function 
        f_dx = vpa(subs(df,X,x0));
        
        % Newton-Raphson Method
        x0 = x0 -(f_x/f_dx);
        
        % update the root
        root = x0; 
        
        % update vector of values of function at each apprx. value x
        
        fx = [fx, f_x];
        
        % update of approximating value of the root
        x  = [x, x0];
                
        if root<tol
            break;
        end
        
    end
end
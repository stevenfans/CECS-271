function [root,err,x] = bisec(f,a,b,tol,maxIter)
 
    isRoot = 0;
    prev = 0; 
    x = [];
    err=[];
    X = sym('x');
    
    for i=1:1:maxIter
        % get midpoint between a and b
        mid = (a+b)/2;
        
        a_val = vpa(subs(f,X,a));
        b_val = vpa(subs(f,X,b));
        m_val = vpa(subs(f,X,mid));
        
        % check to determine new a and b
        if (a_val*m_val<0)
            b = mid;
        elseif (a_val*m_val>0)
            a = mid;
        elseif (a_val*m_val==0)
            isRoot = 1; 
        end
        
        root = mid;
        
        % vector of approximating value of the root
        x = [x, root]; 
        
        % condition for when there is a previous value
        if prev~=0
        % vector or relative approx errors
            Ea = abs(mid - prev )/mid;       
            err = [err, Ea];
        else 
            % first run, so put 999 as place holder in element position 1
            err = [err, 999] ;
        end
        
        % check if the mid is less than the tolerance to be the root
        if(mid<tol)
            isRoot = 1; 
        end
        
        if isRoot==1
             break; 
        end
         
         prev = mid; 
    end

end
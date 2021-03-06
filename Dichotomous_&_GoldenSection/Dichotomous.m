
function [xsol,itr] = Dichotomous(fun,a,b,del,eps)
itr=-1;
xsol=-999;
for i=1:1000
    c=(a+b)/2-eps;
    d=(a+b)/2+eps;
    fc=feval(fun,c);
    fd=feval(fun,d);
    if fc>fd
        a=c;
    else
        b=d;
    end
    
    if abs(b-a)<del
        xsol=(a+b)/2;
        itr=i;
        break
    end

end

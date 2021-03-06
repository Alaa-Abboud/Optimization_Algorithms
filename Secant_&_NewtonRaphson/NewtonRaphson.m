function [xsol,isol] = NewtonRaphson(func, fprime, xinit, tol)

xold = xinit ;
xsol = -999 ;

for i = 1:1000
    
f = feval(func, xold) ;
fp = feval(fprime, xold) ;

xnew = xold - (f/fp) ;

if abs(xnew - xold) < tol
    xsol = xnew;
    break
end

xold = xnew ;

end
isol = i;



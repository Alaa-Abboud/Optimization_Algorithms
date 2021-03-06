function [xsol, isol] = Secant(func, dx, xinit, tol)

xold = xinit;
xsol = -999;

for i = 1:1000
    
    f = feval(func, xold);
    fd = feval(func, xold + dx);
    
    xnew = xold - f * (dx / (fd - f));
    if abs(xnew - xold) < tol
        xsol = xnew;
        break
    end
    
    xold = xnew;
end

isol = i;

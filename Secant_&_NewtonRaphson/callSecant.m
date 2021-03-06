func = @equation;

dx = 0.01 ;
xinit = 1 ;
tol = 10^(-3) ;

[xsol, isol] = Secant(func, dx, xinit, tol)
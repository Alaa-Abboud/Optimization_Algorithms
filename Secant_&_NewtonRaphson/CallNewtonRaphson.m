func = @equation ;
fprime = @equation_prime ;

xinit = 1;
tol = 10^(-3) ;

[xsol,isol] = NewtonRaphson(func, fprime, xinit, tol)



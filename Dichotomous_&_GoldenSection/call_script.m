fun=@Example;
a=1;
b=2;
del=(10^-2);
eps=(10^-3);

[xsol,itr] = Dichotomous(fun,a,b,del,eps)

[xsol_2,itr_2] = GoldenSection(fun,a,b,del)
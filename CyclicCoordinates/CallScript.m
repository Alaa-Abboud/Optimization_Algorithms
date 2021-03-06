f = @example;
XInitVect = [0 3];
eps = 1e-2;
LB = [0 0];
UB = [3.5, 3.5];

[XOptVect, iterC] = CyclicCoordinate(f, XInitVect, eps, LB, UB)


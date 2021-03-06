function [XOptVect, iterC] = CyclicCoordinate(f, XInitVect, eps, LB, UB)

XVect = XInitVect;
YVect = XVect;
n = length(XInitVect);
d = eye(n);

for k = 1:10000
    XVOld = XVect;
    
    for j = 1:n
        dj = d(j,:);
        
        a = max(LB(j) - YVect(j), -10);
        b = min(UB(j) - YVect(j), 10);
        
        f_c = @(c)(feval(f,YVect + (c*dj)));
        c_Opt = GoldenSection(f_c, a, b, 1e-2);
        YVect = YVect + c_Opt * dj;
    end
    
    XVect = YVect;
    
    if norm(XVect - XVOld) < eps
        break;
    end
    
end

XOptVect = XVect;
iterC = k;

end


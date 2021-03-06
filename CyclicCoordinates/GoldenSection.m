


function [xsol, itr] = GoldenSection (func, a, b,delta)

alpha = 0.618 ; 
xsol = -999;
c = a + ((1-alpha)*(b-a)) ;
d = a + (alpha* (b-a)) ; 
fc = feval (func,c);
fd = feval (func,d);

for i = 1:1000
if abs(b-a) < delta
  
    xsol = (a+b) /2 ;
    break
else
    
if fc > fd
    a = c;
    c= d;
    d = a + (alpha* (b-a));
    fc = fd ;
    fd = feval (func,d);
else
    b = d ;
    d =c ;
    c = a +((1 - alpha )* (b-a));
    fd = fc ;
    fc = feval (func,c);
end

    

end
itr = i;
end
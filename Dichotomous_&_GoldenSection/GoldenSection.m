
function [xsol_2,itr_2] = GoldenSection(fun,a,b,del)

itr_2=-1;
xsol_2=-999;
al=0.618;

c=(1-al)*(b-a)+a;
d=al*(b-a)+a;

for i=1:1000
   
    fc=feval(fun,c);
    fd=feval(fun,d);
    
    if fc>fd
        a=c;
        c=d;
        d=a+al*(b-a);
    else
       b=d;
       d=c;
       c=a+(1-al)*(b-a);
    end
    
    if abs(b-a)<del
        xsol_2=(a+b)/2;
        itr_2=i;
        break
    end

end
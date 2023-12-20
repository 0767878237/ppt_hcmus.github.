function [xM,n] = lap(fp,f,a,b,saiso)
f=inline(f);
if(f(a)*f(b)>0)
    disp('Khong co nghiem trong khoang nay');
else
    xT=a;
    n=0;
    e=saiso+1;
    while(e>saiso)
        xM=fp(xT);
        e=abs(xM-xT);
        xT=xM;
        n=n+1;
    end 
end
end
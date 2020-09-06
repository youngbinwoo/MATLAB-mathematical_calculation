%%Problem6_2

%(a) fixed-point

clc,clear
es=0.01; xold=0; N=50; iter=0;
for i=1:N
    xr=9/17*xold^2-25/17;
    ea=abs(xr-xold)/abs(xr)*100;
    iter=iter+1;
    xold=xr;
    if ea<es,break,end
end
xr 
iter
ea


%(b)Newton-Raphson
clc,clear
es=0.01; xold=0; N=50; iter=0;
for i=1:N
    xr=xold-((-0.9*xold^2+1.7*xold+2.5)/(-1.8*xold+1.7))
    ea=abs(xr-xold)/abs(xr)*100;
    iter=iter+1;
    xold=xr;
    if ea<es,break,end
end

xr 
iter
ea

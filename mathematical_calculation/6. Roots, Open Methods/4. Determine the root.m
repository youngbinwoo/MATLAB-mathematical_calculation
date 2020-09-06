%%Problem6_29

%newton 방법을 사용
clc,clear
es=0.02; N=50; xold=0.7; iter=0;
for i=1:N
    xr=xold-(exp(0.5*xold)-5+5*xold)/(0.5*exp(0.5*xold)+5);
    ea=abs(xr-xold)/abs(xr)*100;
    iter=iter+1;
    xold=xr;
    if ea<es,break,end
end
xr
iter
ea

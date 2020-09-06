%%Problem4_16

clear, clc
x=2;
h=0.25;
ff=@(x) 25*x^3-6*x^2+7*x-88;
df=@(x) 75*x^2-12*x+7;
ddf=@(x) 150*x-12;
dddf=@(x) 150;
 
%forward difference approximation
w=(ff(x+h)-ff(x))/h
Et1=abs(df(2)-w);
Rn1=abs(ddf(2)*h^2/2);
 
%bacward difference approximation
y=(ff(x)-ff(x-h))/h
Et2=abs(df(2)-y);
Rn2=abs(ddf(2)*h^2/2);
 
%centered difference approximation
b=(ff(x+h)-ff(x-h))/(2*h)
Et3=abs(df(2)-b);
Rn3=abs(dddf(2)*h^3/(3*2*1));

%%Problem15_14

clear, clc
%%(a)번 linear
%data 
S= [0.01 0.05 0.1 0.5 1 5 10 50 100];
V= [6.078*10^(-11) 7.595*10^(-9) 6.063*10^(-8) 5.788*10^(-6) 1.737*10^(-5) 2.423*10^(-5) 2.430*10^(-5) 2.431*10^(-5) 2.431*10^(-5)];
 
 
%linearize the model 
a =linregr(1./S.^3,1./V);
km=1/41400;
k=16453*km;
v0=(km*S.^3)./(k+S.^3);
 
%graph
figure(1)
loglog(S,V,'o',S,v0)
 
%%(b)번 nonlinear
a=fminsearch(@fSSR,[6e-11, 1],[],S,V)
v1=a(1)*S.^3./(a(2)+S.^3);
figure(2)
loglog(S,V,'o',S,v1)

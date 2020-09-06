%%Problem5_15

clc,clear,close
Pumax = 80000;Ku = 0.05;Pumin = 110000;Psmax = 320000;P0 = 10000;Ks = 0.09;
Pu = @(t) Pumax*exp(-Ku*t)+Pumin;
Ps = @(t) Psmax./(1+(Psmax/P0-1)*exp(-Ks*t));
t = 0:1:100;
 
 
Pd = @(t) Ps(t)-1.2*Pu(t);
fasol = falseposition(Pd,0,100);
plot(t,Pd(t),'-',fasol,0,'o');

%%Problem23_10

clc,clear
g=9.81; L=0.6;
nonlinear=@(t,T) [-g/L*sin(T(2));T(1)];
linear=@(t,T) [-g/L*(T(2));T(1)];
 
 
%T=pi/8
  %nonlinear
[t1,T1]= ode45(nonlinear,[0,15],[0 pi/8]);
  %linear
[t2,T2]=ode45(linear,[0,15],[0 pi/8]);
subplot(2,1,1),plot(t1,T1(:,1),'r',t2,T2(:,1),'b')
title('theta=pi/8')
legend('nonlinear','linear')
 
%T=pi/2
  %nonlinear
[t3,T3]= ode45(nonlinear,[0,15],[0 pi/2]);
  %linear
[t4,T4]=ode45(linear,[0,15],[0 pi/2]);
subplot(2,1,2),plot(t3,T3(:,1),'r',t4,T4(:,1),'b')
title('theta=pi/2')
legend('nonlinear','linear')

%%Problem23_8

clear all, clc
 
h=0.03125; t=0:h:5;
dydt=@(t,y) 5*(y-t^2);
 
 
% (a) Analytically
y1= t.^2+2*t/5+2/25;
plot(t,y1,'r');ylim([-30 30])
hold on
 
 
% (b) fourth-order RK method
tspan=[0 5];y0=0.08;
[t2,y2] = rk4sys(dydt,tspan,y0,h);
plot(t2,y2,'b')
 
% (c) ode 45
[t3,y3]= ode45(dydt,tspan,y0,h);
plot(t3,y3,'k')
 
% (d) ode 23s
[t4,y4]= ode23s(dydt,tspan,y0,h);
plot(t4,y4,'y')
 
 
% (e) odec23tb
[t5,y5]= ode23tb(dydt,tspan,y0,h);
 plot(t5,y5,'g')
 
legend('(a) Analytically','(b) RK4 method','(c) ode 45',' (d) ode 23s','(e) odec23tb')

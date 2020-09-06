%%Problem22_15

clc,clear,clf
h=1/100;k=20 ; tspan=0:h:15; m=20; y0=[1 0];
%c=5
[t1,y1] = rk4sys(@young,tspan,y0,h,m,k,5);
plot(t1,y1(:,1))
hold on
%c=40
[t2,y2] = rk4sys(@young,tspan,y0,h,m,k,40);
plot(t2,y2(:,1))
%c=200
[t3,y3] = rk4sys(@young,tspan,y0,h,m,k,200);
plot(t3,y3(:,1))

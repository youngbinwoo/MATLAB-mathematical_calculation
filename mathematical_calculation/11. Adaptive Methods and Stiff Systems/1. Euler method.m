%%Problem23_5

%(a)
a=-100000; b=99999; 
dy/dt= a*y+b*exp(-t)

%euler method 
y(i+1)=y(i)+h*(a*y(i)+b*exp(-t(i)))
     =y(i)*(1+a*h)+b*h*exp(-t(i))

abs(1+ah)<1  % maintain stability 
abs(1-100000*h)<1
-1<1-100000*h<1
-2<-100000*h<0
0.000002<h % step size

%(b)
clc,clear
dt=0.1;
t=0:dt:2;
N=length(t);
y1=zeros(N,1);
y1(1)=0;
for i= 1:N-1
    y1(i+1)=(y1(i)+99999*exp(-t(i))*dt)/(1+100000*dt);
end
figure(1)
plot(t,y1,'-')

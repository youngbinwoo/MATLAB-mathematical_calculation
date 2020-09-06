%%Problem22_2

clear,clc

%analytically
x_f=1;
dx=0.25;
x=0:dx:x_f;
y=x.^4+x.^3+9/4.*x.^2+x+1;   
plot(x,y,'r')
hold on
 
%euler's method
N=floor(x_f/dx);
y_1=zeros(1,N);
y_1(1)=1;
for i=1:N
    y_1(i+1)=y_1(i)+((1+4*x(i))*sqrt(y_1(i)))*dx;
end
plot(x,y_1,'b')

%Heun's method 
y_2=zeros(1,N);
y_2(1)=1;
for i=1:N
    y0= y_2(i)+dx*(1+4*x(i))*sqrt(y_2(i));
    f1=(1+4*x(i))*sqrt(y_2(i)); f2=(1+4*x(i+1))*sqrt(y0);
    y_2(i+1)=y_2(i)+dx*((f1+f2)/2);
end
plot(x,y_2,'g')

%Ralston's method
y_3=zeros(1,N);
y_3(1)=1;
for i=1:N
    k1=(1+4*x(i))*sqrt(y_3(i));
    k2=(1+4*(x(i)+3/4*dx))*sqrt(y_3(i)+3/4*k1*dx);
    y_3(i+1)=y_3(i)+(1/3*k1+2/3*k2)*dx;
end
plot(x,y_3,'k')

%fourth-order RK method   
y_4=zeros(1,N);
y_4(1)=1;
for i=1:N
      k1=(1+4*x(i))*sqrt(y_4(i));
      k2=(1+4*(x(i)+dx/2))*sqrt(y_4(i)+k1*dx/2);
      k3=(1+4*(x(i)+dx/2))*sqrt(y_4(i)+k2*dx/2);
      k4=(1+4*(x(i)+dx))*sqrt(y_4(i)+k3*dx);
      y_4(i+1)=y_4(i)+(k1+2*k2+2*k3+k4)*dx/6;
end
plot(x,y_4,'y')
hold on
legend('Analytically','Euler','Heun','Ralston','RK4')

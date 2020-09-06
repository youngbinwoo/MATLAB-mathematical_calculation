%%% Problem 1_18

%%(a)
clc,clear
T1(1)=37;
Ta=10;
dt=0.5;
k=0.12;
t=0:0.5:5;
for i=1:length(t)-1;
    T1(i+1)=T1(i)-k*(T1(i)-Ta)*dt
end

%%(b)
%이번 문제에서는 Tm이 변한다. t가 0일 땐 20, t가 5일 땐 10이기 때문에 일차식 형태로 표현하면 Ta=-2t+20. 

%방법1)
clc,clear
T2(1)=37;
dt=0.5;
k=0.12;
t=0:dt:5;
for i=1:length(t)-1;
    T2(i+1)=T2(i)-k*(T2(i)-20+2*t(i))*dt
end

%방법2)
clc,clear
T2(1)=37;
dt=0.5;
k=0.12;
t=0:dt:5;
Ta_new(1)=20;
for i=1:length(t)-1;
    Ta_new(i+1)= 20-2*t(i+1);
    T2(i+1)=T2(i)-k*(T2(i)-Ta_new(i))*dt
end
%%(c)
%방법 1)
clc,clear
T1(1)=37;
T2(1)=37;
Ta=10;
dt=0.5;
k=0.12;
t=0:0.5:5;
Ta=10;
 for i=1:length(t)-1;
     T1(i+1)=T1(i)-k*(T1(i)-Ta)*dt;
     T2(i+1)=T2(i)-k*(T2(i)-20+2*t(i))*dt;
 end
 
plot(t,T1)
hold on
plot(t,T2)
hold off

%방법2)
clc,clear
T1(1)=37;
T2(1)=37;
Ta=10;
dt=0.5;
k=0.12;
t=0:0.5:5;
Ta=10;
Ta_new(1)=20;
for i=1:length(t)-1;
    Ta_new(i+1)=20-2*t(i+1);
    T1(i+1)=T1(i)-k*(T1(i)-Ta)*dt;
    T2(i+1)=T2(i)-k*(T2(i)-Ta_new(i))*dt;
end
 
plot(t,T1)
hold on
plot(t,T2)
hold off

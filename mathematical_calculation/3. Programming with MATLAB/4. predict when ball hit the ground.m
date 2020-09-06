%%Problem3_21

clc,clf,clear
g=9.81; theta0=50*pi/180; v=5; CR=0.8;
t(1)=0;x=0;y=0;
plot(x,y,'o','MarkerFaceColor','r','MarkerSize',10)
axis([0 7 0 0.8])
M(1)=getframe;
dt=1/128;
for j = 2:1000
t(j)=t(j-1)+dt;
x=x+v*cos(theta0)*dt;
y=y+(v*sin(theta0)-g*t(j))*dt;
if y<=0
    y=-y;
    t(j)=0;
    v=v*CR;
 
end
 
plot(x,y,'o','MarkerFaceColor','r','MarkerSize',10)
axis([0 7 0 0.8])
M(j)=getframe;
end

%%Problem7_11

clc,clear
x=linspace(-2,0,40);
y=linspace(0,3,40);
[X,Y] = meshgrid(x,y);
Z=2*X.^2+3*Y.^2-4*X*Y-Y-3*X;
subplot(1,2,1);
cs=contour(X,Y,Z);
clabel(cs);
xlabel('x_1');
ylabel('x_2');
title('(a) Contour plot');grid;
subplot(1,2,2);
cs=surfc(X,Y,Z);
zmin=floor(min(Z));
zmax=ceil(max(Z));
xlabel('x_1');
ylabel('x_2');
zlabel('f(x_1,x_2)');
title('(b) Mesh plot');
 
f=@(x) 2*x(1).^2+3*x(2).^2-4*x(1)*x(2)-x(2)-3*x(1);
[x,fval]=fminsearch(f,[-0.5,0.5])

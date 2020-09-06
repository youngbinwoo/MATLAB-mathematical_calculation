%%Problem7_19

clc, clear
g=9.81; y0=1; v0=25; theta0=50*pi/180;
z=@(x) -(tan(theta0)*x-g/(2*v0^2*cos(theta0)^2)*x^2+y0);
[xmax,fmax,ea]=goldmin(z,0,60)  %max 값이기 때문에 식 전체에 -

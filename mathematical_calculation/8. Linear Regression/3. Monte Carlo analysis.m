%%Problem14_35

clc, clear all
%parameter
g=9.81; y0=1; v0=25; theta0=50/180*pi; 
 
%function
y=@(x) tan(theta0)*x-g/(2*v0^2*cos(theta0)^2)*x^2+y0;
dy= @(x) tan(theta0)-g/(v0^2*cos(theta0)^2)*x;
 
%(a)analytically
x=(2*tan(theta0)*v0^2*cos(theta0)^2)/(2*g)
y=tan(theta0)*x-g/(2*v0^2*cos(theta0)^2)*x^2+y0
 
%(b) monte carlo simulation
n=10000; xmin=0; xmax=60;
r=rand(n,1);
xrand=xmin+(xmax-xmin)*r;
y=tan(theta0)*xrand-g/(2*v0^2*cos(theta0)^2)*xrand.^2+y0;
[ymax,i]=max(y);
xmax=xrand(i)
ymax

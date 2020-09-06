%% Problem 2_19

 y0=0;
 x=0:5:80;
 g=9.81;
 v0=28;
 theta0=15*pi/180;
 y1=tan(theta0)*x-g/(2*v0^2*(cos(theta0))^2)*x.^2+y0;
 theta0=30*pi/180;
 y2=tan(theta0)*x-g/(2*v0^2*(cos(theta0))^2)*x.^2+y0;
 theta0=45*pi/180;
 y3=tan(theta0)*x-g/(2*v0^2*(cos(theta0))^2)*x.^2+y0;
 theta0=60*pi/180;
 y4=tan(theta0)*x-g/(2*v0^2*(cos(theta0))^2)*x.^2+y0;
 theta0=75*pi/180;
 y5=tan(theta0)*x-g/(2*v0^2*(cos(theta0))^2)*x.^2+y0;
 plot(x,y);axis([0 80 0 40]) 
 legend({'y1','y2','y3','y4','y5'},'Location','northeast')


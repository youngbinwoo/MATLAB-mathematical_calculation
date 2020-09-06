%%Problem24_6

%shooting_method M-file
function [x,T]=shooting_method(func,tspan,bc,tout,varargin)
za1=-5; Ta=bc(:,1);Tb=bc(:,2);
[x1,T1]=ode45(func,tspan,[Ta za1]);
Tb1=T1(length(T1));
 
 
za2=za1*1.1;
[x2,T2]=ode45(func,tspan,[Ta za2]);
Tb2=T2(length(T2));
 
 
za=za1+(za2-za1)/(Tb2-Tb1)*(Tb-Tb1);
[x,T]=ode45(func,tout,[Ta za]);
plot(x,T(:,1))
fprintf('Final shot: za = %8.4g     T = %8.4g\n',za,T(length(T)))

% example 24.2
function dy=youngbin(x,y)
dy=[y(2); -0.05*(200-y(1))];

%%Problem14_14

clc,clear all
% data
c=[0.5 0.8 1.5 2.5 4];
k=[1.1 2.5 5.3 7.6 8.9];
 
%식 변형한 후, 1/k=Cs/Kmax*1/c^2+1/Kmax (일반식은 Y=a0+a1X)
% a0=1/Kmax,a1=Cs/Kmax,Y=1/k,X=1/c^2)
a=polyfit(1./c.^2,1./k,1)
 
%Cs/Kmax= 0.2020     1/Kmax=0.0967 이기 때문에
Kmax=1/0.0967
Cs=Kmax*0.2020
 
%c=2 일때
K= (Kmax*2^2)/(Cs+2^2)

%%Problem7_26

clc, clear
g=@(c) -(2*c/(4+0.8*c+c^2+0.2*c^3));
[c]=goldmin(g,-5,5)

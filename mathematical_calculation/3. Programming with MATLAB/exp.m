#Problem3.14 M-file

function v= exp(t)
if t<0
    v=0;
elseif t<=8
    v=10*t^2-5*t;
elseif t<=16
    v= 624-5*t;
elseif t<=26
    v=36*t+12*(t-16)^2;
else
    v=2136*exp(-0.1*(t-26));
end
   

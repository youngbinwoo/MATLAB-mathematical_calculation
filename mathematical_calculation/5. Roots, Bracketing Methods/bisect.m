%Problem5_7(b) M-file

function [root,fx,ea,iter]=bisect(func,xl,xu)
if nargin<3,error('at least 3 input arguments required'),end
test = func(xl)*func(xu);
if test>0,error('no sign change'),end
iter = 0; xr = xl; ea = 100;
while (1)
    iter = iter + 1
    xrold = xr;
    xr = (xl + xu)/2
    test = func(xl)*func(xr);
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
    else
        ea = 0;
    end
    if iter>=3 ,break,end
end
 
*command 창에
>> f= @(x) log(x^2)-0.7;
>> bisect(f,0.5,2) 

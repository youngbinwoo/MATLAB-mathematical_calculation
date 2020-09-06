%%Problem5_7

%(a)
f=@(x) log(x^2)-0.7;
fplot(f,[0,5]),grid 

%(b)
f= @(x) log(x^2)-0.7;
bisect(f,0.5,2) 

%(c)
f= @(x) log(x^2)-0.7;
false_position(f,0.5,2)



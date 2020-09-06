%%Problem 22_15 M-file

function dy = young(t,y,m,k,c)
dy=[y(2);-c*y(2)/m+-k*y(1)/m];
end

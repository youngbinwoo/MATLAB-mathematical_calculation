%%Problem15_4  M-file

function p = polyreg(x,y,m)
n = length(x); 
if length(y)~=n, error('x and y must be same length'); end 
for i = 1:m+1   
  for j = 1:i 
      k = i+j-2;     
      s = 0;
      for l = 1:n       
          s = s + x(l)^k;     
      end   
      A(i,j) = s;     
      A(j,i) = s;   
   end   
   s = 0;   
   for l = 1:n     
       s = s + y(l)*x(l)^(i-1);   
   end
   b(i) = s; 
end 
p = A\b';

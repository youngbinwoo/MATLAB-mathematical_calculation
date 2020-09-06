%%problem3_5  M-file  

function appro(n,x) 
k = 0; 
true = sin(x); 
approximation = 0; 
while (1) 
    k=k+1;
     if k > n, break, end 
     approximation = approximation + (-1)^(k-1) * x^(2*k-1) / factorial(2*k-1);
     error= (true - approximation) / true * 100
end 
     

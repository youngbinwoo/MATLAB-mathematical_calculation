%%Problem4_18

clc, clear
x=0.1;
sum=0;
exact = 1/(1-0.1);
 
for i=1:4
 sum= sum + x^(i-1);
 e_a(i)=sum;
end
 
true_error = (abs (exact - e_a)/exact)*100
 
for j=1:3
appr_error(j)= (abs (e_a(j+1)-e_a(j))/abs(e_a(j+1)))*100;
end
 
appr_error


%error_t 에 대한 식 구하기

clc,clear
x=0.1;
x_approximation(1)=1;
x_true=1/(1-0.1);
error_t(1)=abs((x_true-x_approximation(1))/x_true)*100;
i=2;
 
while 1
       if abs(error_t(i-1))<=0.05, break, end
    x_approximation(i)=x_approximation(i-1)+x^(i-1);
    error_approxi(i)=100*(x_approximation(i)-x_approximation(i-1))/x_approximation(i);
    error_t(i)=abs((x_true-x_approximation(i))/x_true)*100;
    i=i+1;
     
end
    
error_t
error_approxi



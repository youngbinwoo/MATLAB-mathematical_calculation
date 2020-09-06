%%Problem14_3

clc,clear all
% data
A=[29.65,28.55,28.65,30.15,29.35,29.75,29.25,30.65,28.15,...
    29.85,29.05,30.25,30.85,28.75,29.65,30.45,29.15,...
    30.45,33.65,29.35,29.75,31.25,29.45,30.15,29.65,30.55,...
    29.65,29.25];
sort(A)
 
%(a) mean
mean= mean(A)
 
%(b) median
median= median(A)
 
%(c) mode
mode= mode(A)
 
%(d) range
range= max(A)-min(A)
 
%(e) standard deviation
std= std(A)
 
%(f) variance
var= var(A)
 
%(g) coefficient of variation
c_v= (std/mean)*100
 
%(h) construct a histogram
x=28:0.4:34;
hist(A,x)
 
%(i)[y+start y_end] 사이에 수만 68%에 대해 유효.총 22개
y_start=mean-std;
y_end=mean+std;
[y_start y_end]

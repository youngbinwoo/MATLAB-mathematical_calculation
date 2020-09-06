%%Problem15_16

clear all, clc
 
format short g
format compact
t = [0 4 8 12 16 20]';
B = [67.38 74.67 82.74 91.69 101.60 112.58]';
 
disp('linear:')
Z=[ones(size(t)) t];
a=(Z'*Z)\(Z'*B);a'
Sr=sum((B-Z*a).^2);
r2=1-Sr/sum((B-mean(B)).^2)
syx=sqrt(Sr/(length(B)-length(a)))
tp=[0:30];
Bplin=a(1)+a(2)*tp;
Bp30lin=a(1)+a(2)*30;
pause
 
disp('parabolic:')
Z=[ones(size(t)) t t.^2];
a=(Z'*Z)\(Z'*B);a'
Sr=sum((B-Z*a).^2);
r2=1-Sr/sum((B-mean(B)).^2)
syx=sqrt(Sr/(length(B)-length(a)))
tp=[0:30];
Bpquad=a(1)+a(2)*tp+a(3)*tp.^2;
Bp30quad=a(1)+a(2)*30+a(3)*30^2
pause
 
disp('exponential:')
Z=[ones(size(t)) t];
a=(Z'*Z)\(Z'*log(B));a'
Sr=sum((log(B)-Z*a).^2);
r2=1-Sr/sum((log(B)-mean(log(B))).^2)
syx=sqrt(Sr/(length(log(B))-length(a)))
tp=[0:30];
Bpexp=exp(a(1)+a(2)*tp);
Bp30exp=exp(a(1)+a(2)*30);
Bp30lin
Bp30quad
Bp30exp
clf
plot(t,B,'o',tp,Bplin,tp,Bpquad,tp,Bpexp)
legend('data','linear','quadratic','exponential','location','Best')


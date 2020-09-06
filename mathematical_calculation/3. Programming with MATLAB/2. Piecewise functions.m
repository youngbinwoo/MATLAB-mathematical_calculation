%%Problem3_14

k=0;
for i=-5:0.5:50
    k=k+1;
    t(k)=i;
    v(k)=exp(t(k));
end
plot(t,v)

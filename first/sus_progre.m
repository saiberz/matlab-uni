function x=sus_progre(L,b)
n=length(L); x=zeros(n,1);
for i=1:n
    x(i)=(b(i)-L(i,:)*x)/L(i,i);
end
function x=sus_regre(U,b)
n=length(U); x=zeros(n,1);
for i=n:-1:1
    x(i)=(b(i)-U(i,:)*x)/U(i,i);
end
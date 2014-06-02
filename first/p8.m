clear
clc
A=[6 -2 2 4
    12 -8 6 10
    3 -13 9 3
    -6 4 1 -18];
b=[12 34 27 -38]';

%A=round(rand(1000)*20);
%b=round(rand(1000,1)*20);
n=length(b);
Abak=A;bbak=b;
A=[A b]
%Metodo de eliminacion 
%gausiana basica
for i=1:n-1
    for j=i+1:n
        pivote=A(i,i);
        A(j,:)=A(j,:)-A(i,:)*A(j,i)/pivote;
    end
end
A
%susticion regresiva
b=A(:,end);
A=A(:,1:end-1);
x=zeros(n,1);
for i=n:-1:1
    x(i)=(b(i)-A(i,:)*x)/A(i,i);
end
x;
A=Abak;b=bbak;
xx=inv(A)*b;

[x xx]
% xxx=A\b
% xxxx=linsolve(A,b)












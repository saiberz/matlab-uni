function x=solucion_slb(A,b)
n=length(b);
A=[A b];
%Metodo de eliminacion 
%gausiana basica
for i=1:n-1
    for j=i+1:n
        pivote=A(i,i);
        A(j,:)=A(j,:)-A(i,:)*A(j,i)/pivote;
    end
end
%susticion regresiva
b=A(:,end);
A=A(:,1:end-1);
x=zeros(n,1);
for i=n:-1:1
    x(i)=(b(i)-A(i,:)*x)/A(i,i);
end












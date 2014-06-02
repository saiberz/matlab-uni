function x=solucion_slpp(A,b)
n=length(b);
A=[A b];
%Metodo de eliminacion 
%gausiana con pivoteo parcial
for i=1:n-1
    for j=i+1:n
        max=A(i,i);fmax=i;
        for k=i+1:n
            if abs(A(k,i))>abs(max)
                max=A(k,i);
                fmax=k;
            end
        end
        if fmax~=i
            tem=A(fmax,:);
            A(fmax,:)=A(i,:);
            A(i,:)=tem;
        end
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



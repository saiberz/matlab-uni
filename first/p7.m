clear
clc
A=[6 -2 2 4
    12 -8 6 10
    12 -13 9 3
    -6 4 1 -18];
b=[12 34 27 -38]';
%Sea A la matriz ampliada
Abak=A;bbak=b;
A=[A b]


%Metodo de eliminacion 
%gausiana basica
pivote=A(1,1);%6
%f2=f2-f1*12/6
%f2=f2-f1*A(2,1)/pivote
A(2,:)=A(2,:)-A(1,:)*A(2,1)/pivote;
A(3,:)=A(3,:)-A(1,:)*A(3,1)/pivote;
A(4,:)=A(4,:)-A(1,:)*A(4,1)/pivote;
A

pivote=A(2,2);%-4
%f3=f3-f2*A(3,2)/pivote
A(3,:)=A(3,:)-A(2,:)*A(3,2)/pivote;
A(4,:)=A(4,:)-A(2,:)*A(4,2)/pivote;
A



pivote=A(3,3);%2
%f4=f4-f3*A(4,3)/pivote
A(4,:)=A(4,:)-A(3,:)*A(4,3)/pivote;
A




%sustitucion regresiva
b=A(:,end);
A=A(:,1:end-1);
x=zeros(4,1);
x(4)=(b(4)-A(4,:)*x)/A(4,4);
x(3)=(b(3)-A(3,:)*x)/A(3,3);
x(2)=(b(2)-A(2,:)*x)/A(2,2);
x(1)=(b(1)-A(1,:)*x)/A(1,1);
xx1=x';
A=Abak;b=bbak;
xx2=(inv(A)*b)';
xx3=(A\b)';
xx4=((A^-1)*b)';
xx5=(linsolve(A,b))';
xx1
xx2
xx3
xx4
xx5










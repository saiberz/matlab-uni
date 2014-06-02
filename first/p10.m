clear
clc
A=[6 -2 2 4
    12 -8 6 10
    3 -13 9 3
    -6 4 1 -18];
b=[12 34 27 -38]';
xx=inv(A)*b;
A=[A b]

%Metodo de eliminacion 
%gausiana con pivoteo total
%intercambio de c1xc4
tem=A(:,1);
A(:,1)=A(:,4);
A(:,4)=tem;
A

%intercambio de f1xf4
tem=A(1,:);
A(1,:)=A(4,:);
A(4,:)=tem;
A

pivote=A(1,1);%-18
%f2=f2-f1*A(2,1)/pivote
A(2,:)=A(2,:)-A(1,:)*A(2,1)/pivote;
A(3,:)=A(3,:)-A(1,:)*A(3,1)/pivote;
A(4,:)=A(4,:)-A(1,:)*A(4,1)/pivote;
A

%intercambio de f2xf3
tem=A(2,:);
A(2,:)=A(3,:);
A(3,:)=tem;
A

pivote=A(2,2);%-12.333
%f3=f3-f2*A(3,2)/pivote
A(3,:)=A(3,:)-A(2,:)*A(3,2)/pivote;
A(4,:)=A(4,:)-A(2,:)*A(4,2)/pivote;
A

%intercambio de c3xc4
tem=A(:,3);
A(:,3)=A(:,4);
A(:,4)=tem;
A

pivote=A(3,3);%7.7
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
x
% xxx=A\b
% xxxx=linsolve(A,b)
xx


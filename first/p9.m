clear
clc
format short
A=[6 -2 2 4
    12 -8 6 10
    3 -13 9 3
    -6 4 1 -18];
b=[12 34 27 -38]';
A=[A b]

%Metodo de eliminacion 
%gausiana con pivoteo parcial

%intercambio de f1xf2
tem=A(1,:);
A(1,:)=A(2,:);
A(2,:)=tem;
A


pivote=A(1,1);%12
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


pivote=A(2,2);%-11
%f3=f3-f2*A(3,2)/pivote
A(3,:)=A(3,:)-A(2,:)*A(3,2)/pivote;
A(4,:)=A(4,:)-A(2,:)*A(4,2)/pivote;
A

%intercambio de f3xf4
tem=A(3,:);
A(3,:)=A(4,:);
A(4,:)=tem;
A

pivote=A(3,3);%4
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


xx=inv(A)*b
% xxx=A\b
% xxxx=linsolve(A,b)



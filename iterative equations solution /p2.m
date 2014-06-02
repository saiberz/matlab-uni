clc
clear
A=[
    0.09 3 -0.15
    4 0.24 -0.08
    0.04 -0.08 4]
b=[8 9 20]'
xx=inv(A)*b
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
%Usando metodo de Jacobi
T=inv(D)*(L+U);
c=inv(D)*b;
format long
x=[0 0 0]';
xa=x
TOL=1e-2;
NMAX=10000;
for i=1:NMAX
    x=T*x+c;
    er=norm(x-xa,inf);
    xa=x
    if er<TOL
        break
    end
end
i
[x xx]
radio_espectral=max(abs(eig(T)))

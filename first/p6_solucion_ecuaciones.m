%Teorema de Rouche-Frobenius
A=[3 7 3 
   4 6 7
   6 14 6];
b=[5 6 11]';
Aa=[A b]
%¿Es compatible o incompatible?
rank(A)
rank(Aa)

break
Sistema mal condicionado
A=[3 7 2 
   4 6 7
   6 1 3.99];
b=[5 6 15]';
Am=[2.9 7 2 
   4 6 7
   6 1 3.99];
bm=[5 6 15]';
x=inv(A)*b
xm=inv(Am)*bm

k=norm(A,inf)*norm(inv(A),inf)

%EJEMPO PARA TEORIA DE ERRORES
%Propagacion de errores
%Considerar la expresion 
%T=A*c*L*P
%Donde 
%   A=20+- 2%
%   c=1.5
%   L=15 con precision de 0.02
%   P es pi considerando 3 decimales exactas
%format long
clc
A=20;eA=0.02*A;
c=1.5;ec=0;
L=15;eL=0.02;
P=3.141;eP=0.5*10^-3;

Taproximado=A*c*L*P

dTdA=c*L*P;
dTdL=A*c*P;
dTdP=A*c*L;
Eabsoluto=abs(dTdA)*eA+abs(dTdL)*eL+abs(dTdP)*eP
Trango_estimado=[Taproximado-Eabsoluto  Taproximado+Eabsoluto]

Tmin=(A-eA)*c*(L-eL)*(P-eP);
Tmax=(A+eA)*c*(L+eL)*(P+eP);
Trango=[Tmin Tmax]
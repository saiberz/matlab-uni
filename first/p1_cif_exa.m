clc;clear;
a1=2.718; %3
a2=2.7182796; %
a3=2.71828283; %
a4=2.71;%
a5=2.71828182845899999;%
a=a1;

A=exp(1);%2.718281828459046..
ea=abs(A-a);
fprintf('Valor exacto=%.20f\n',A);
fprintf('Valor aproxi=%.20f\n',a);
fprintf('Error absolu=%.20f\n',ea);
n=1; %Cantidad de cifras decimales exactas
fprintf('  Referencia=%.20f\n',.5*10^-n);


    
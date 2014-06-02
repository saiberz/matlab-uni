clc;clear;
a1=91806.916; %
a2=91806.9161; %
a3=91800.91608280156; %
a4=91806.9260;%
a5=91800;%
a=a1;
A=91806.91608279256; %Valor exacto
er=abs(A-a)/abs(A);
fprintf('Valor exacto=%.20f\n',A);
fprintf('Valor aproxi=%.20f\n',a);
fprintf('Error relati=%.20f\n',er);
n=1; %Cantidad de cifras decimales significativas exactas
fprintf('  Referencia=%.20f\n',5*10^-n);


    
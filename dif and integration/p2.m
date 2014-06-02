clear
clc

f='sin(x)';
i='-cos(x)';
%f='x.^4+x.^3+x.^2+x+1';
%i='x.^5/5+x.^4/4+x.^3/3+x.^2/2+x';

fi=inline(i);
a=0;b=2;n=13;
%n numero de puntos
%Que puede ser 13 25 37
format long
Iexacta=fi(b)-fi(a);
Ig1=ncc1(f,a,b,n);
Ig2=ncc2(f,a,b,n);
Ig3=ncc3(f,a,b,n);
Ig4=ncc4(f,a,b,n);
fprintf('La integral exacta es \nIex=%.8f\n',Iexacta)
fprintf('nc1=%.8f  error=%.15f\n',Ig1,abs(Ig1-Iexacta))
fprintf('nc2=%.8f  error=%.15f\n',Ig2,abs(Ig2-Iexacta))
fprintf('nc3=%.8f  error=%.15f\n',Ig3,abs(Ig3-Iexacta))
fprintf('nc4=%.8f  error=%.15f\n',Ig4,abs(Ig4-Iexacta))

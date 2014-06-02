clc
a=5;b=8;n=10;
[c,x]=pleg(n);
fprintf('coeficientes\t\t\traices de legendre\n');
disp([x,c]);
f='sin(x)';
%f='exp(x)';
i=int(f);
fi=inline(i);

I=gauss_legendre_graf(f,a,b,n);
I_exacta=fi(b)-fi(a);
Error=I-I_exacta;
fprintf('Hallando la integral de\n ');
fprintf('\ta=%.2f hasta b=%.2f\n',a,b);
fprintf('Iexacta=%.20f\n',I_exacta);
fprintf('Iaproxi=%.20f con %d puntos\n',I,n);
fprintf('  Error=%.20f\n',abs(I-I_exacta));

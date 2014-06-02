function I=ncc4(f,a,b,n)
%milne
f=inline(f);
x=linspace(a,b,n); %n numero de puntos
h=(b-a)/(n-1);
y=f(x);
coef=(y*0+1);
coef(2:4:end-1)=coef(2:4:end-1)*32;
coef(3:4:end-1)=coef(3:4:end-1)*12;
coef(4:4:end-1)=coef(4:4:end-1)*32;
coef(5:4:end-1)=coef(5:4:end-1)*14;
coef(1)=7;
coef(end)=7;
I=(2*h/45)*(y*coef');
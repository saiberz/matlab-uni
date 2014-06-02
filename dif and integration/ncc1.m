function I=ncc1(f,a,b,n)
%metodo trapecio
f=inline(f);
x=linspace(a,b,n); %n numero de puntos
h=(b-a)/(n-1);
y=f(x);
coef=(y*0+1)*2;
coef(1)=1;
coef(end)=1;
I=(h/2)*(y*coef');

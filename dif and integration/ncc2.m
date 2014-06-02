function I=ncc2(f,a,b,n)
%metodo simpson 1/3
f=inline(f);
x=linspace(a,b,n); %n numero de puntos
h=(b-a)/(n-1);
y=f(x);
coef=(y*0+1);
coef(2:2:end-1)=coef(2:2:end-1)*4;
coef(3:2:end-1)=coef(3:2:end-1)*2;
coef'
I=(h/3)*(y*coef');
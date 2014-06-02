function I=ncc3(f,a,b,n)
%metodo simpson 3/8
f=inline(f);
x=linspace(a,b,n); %n numero de puntos
h=(b-a)/(n-1);
y=f(x);
coef=(y*0+1);
coef(2:3:end-1)=coef(2:3:end-1)*3;
coef(3:3:end-1)=coef(3:3:end-1)*3;
coef(4:3:end-1)=coef(4:3:end-1)*2;
coef'
I=(3*h/8)*(y*coef');
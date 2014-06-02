function I=gauss_legendre_graf(f,a,b,n)
[c,x]=pleg(n);
f=inline(f);
s=0;
x=x*(b-a)/2+(b+a)/2;
for i=1:n
    s=s+c(i)*f(x(i));
end
I=(b-a)*s/2;
xx=linspace(a,b,100);
yy=f(xx);
hold off
plot(xx,yy,'r');
hold on



for i=1:n
    plot([x(i) x(i)],[0 f(x(i))],'o-b')
end
grid on
    
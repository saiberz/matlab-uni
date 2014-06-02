function I=gauss_legendre(f,a,b,n)
[c,x]=pleg(n);
f=inline(f);
s=0;
x=x*(b-a)/2+(b+a)/2;
for i=1:n
    s=s+c(i)*f(x(i));
end
I=(b-a)*s/2;
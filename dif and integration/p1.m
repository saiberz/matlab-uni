clc
clear
sf='sin(x)'
f=inline(sf)
sdf=diff(sf)
df=inline(sdf)
x=2.5;
d_exacta=df(x);
h=0.01;
d1=(f(x+h)-f(x))/h;
d2=(f(x)-f(x-h))/h;
d3=(f(x+h)-f(x-h))/(2*h);
d4=(-3*f(x)+4*f(x+h)-f(x+2*h))/(2*h);
d5=(f(x-2*h)-8*f(x-h)+8*f(x+h)-f(x+2*h))/(12*h);
fprintf('La derivada exacta es %.7f\n',d_exacta);
fprintf('adela=%.5f  error=%.15f\n',d1,abs(d1-d_exacta))
fprintf('atraz=%.5f  error=%.15f\n',d2,abs(d2-d_exacta))
fprintf('centr=%.5f  error=%.15f\n',d3,abs(d3-d_exacta))
fprintf('   d4=%.5f  error=%.15f\n',d4,abs(d4-d_exacta))
fprintf('   d5=%.5f  error=%.15f\n',d5,abs(d5-d_exacta))

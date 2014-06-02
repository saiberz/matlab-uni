clc
%f='y^2+x*cos(y*x)';
f='cos(x)*sin(x/2)';
ff=inline(f);
%df=diff(f)
df='-sin(x)*sin(1/2*x)+1/2*cos(x)*cos(1/2*x)';
xi=0;xf=2*pi;n=8;yi=0;
sed=strcat('Dy=',f)
intef=dsolve(sed,'y(0)=0','x')
intef=inline(intef)
xx=linspace(xi,xf,100);
yy=intef(xx);
hold off;plot(xx,yy,'r')
[xep,yep]=eulerp(f,xi,yi,xf,n);
dsolve(sed,'y(0)=0','x')
[xer,yer]=eulerr(f,xi,yi,xf,n);
[xt2,yt2]=taylor2(f,df,xi,yi,xf,n);
[xk2,yk2]=rungek2(f,xi,yi,xf,n);
[xk4,yk4]=rungek4(f,xi,yi,xf,n);
[xo45,yo45]=ode45('fun1',[xi xf],yi);  
hold on;plot(xep,yep,'.b')
hold on;plot(xer,yer,'ob')
hold on;plot(xt2,yt2,'*r')
hold on;plot(xk2,yk2,'.r')
hold on;plot(xk4,yk4,'or')
hold on;plot(xo45,yo45,'xr')
grid on

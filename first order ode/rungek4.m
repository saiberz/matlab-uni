%n numero de intervalos
function [x,y]=rungek4(f,xi,yi,xf,n)
f=inline(f,'x','y');
h=(xf-xi)/n;x=xi;y=yi;
for i=1:n
    k1=h*f(xi,yi);
    k2=h*f(xi+h/2,yi+k1/2);
    k3=h*f(xi+h/2,yi+k2/2);
    k4=h*f(xi+h,yi+k3);
    yi=yi+(k1+2*k2+2*k3+k4)/6;
    xi=xi+h;
    x=[x xi];
    y=[y yi];
end

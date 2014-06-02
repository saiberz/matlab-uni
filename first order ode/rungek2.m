%n numero de intervalos
function [x,y]=rungek2(f,xi,yi,xf,n)
f=inline(f,'x','y');
h=(xf-xi)/n;x=xi;y=yi;
for i=1:n
    k1=h*f(xi,yi);
    k2=h*f(xi+h,yi+k1);
    yi=yi+(k1+k2)/2;
    xi=xi+h;
    x=[x xi];
    y=[y yi];
end

%n numero de intervalos
function [x,y]=eulerr(f,xi,yi,xf,n)
f=inline(f,'x','y');
h=(xf-xi)/n;x=xi;y=yi;
for i=1:n
    yis=yi+h*f(xi,yi);
    xi=xi+h;
    yi=yi+h*f(xi,yis);
    x=[x xi];
    y=[y yi];
end

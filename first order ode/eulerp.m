%n numero de intervalos
function [x,y]=eulerp(f,xi,yi,xf,n)
f=inline(f,'x','y');
h=(xf-xi)/n;x=xi;y=yi;
for i=1:n
    yi=yi+h*f(xi,yi);
    xi=xi+h;
    x=[x xi];
    y=[y yi];
end


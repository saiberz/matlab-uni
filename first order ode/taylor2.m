%n numero de intervalos
function [x,y]=taylor2(f,df,xi,yi,xf,n)
%df=diff(f,'x','y');
df=inline(df,'x','y');
f=inline(f,'x','y');
h=(xf-xi)/n;x=xi;y=yi;
for i=1:n
    yi=yi+h*f(xi,yi)+h^2*df(xi,yi)/2;
    xi=xi+h;
    x=[x xi];
    y=[y yi];
end

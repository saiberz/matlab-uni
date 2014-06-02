function [x,i,ro]=jacobi(A,b,x,TOL,NMAX)
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
T=inv(D)*(L+U);
c=inv(D)*b;
ro=max(abs(eig(T)));
xa=x;
for i=1:NMAX
    x=T*x+c;
    er=norm(x-xa,inf);
    xa=x;
    if er<TOL
        break
    end
end
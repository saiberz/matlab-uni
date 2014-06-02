clc
format short
roj=2;rog=2;
while roj>0.9 || rog>0.9
    n=4;A=round(rand(n)*100-50);
    b=round(rand(n,1)*100-50);
    D=diag(diag(A));
    L=-tril(A,-1);
    U=-triu(A,1);
    if det(D)>0.1
        Tj=inv(D)*(L+U);Tg=inv(D-L)*U;
        roj=max(abs(eig(Tj)));
        rog=max(abs(eig(Tg)));
    end
end
A
b'
xx=inv(A)*b;TOL=1e-6;x0=b*0+1;
disp('Jacobi')
[xj,iterj,roj]=jacobi(A,b,x0,TOL,10000);
disp(iterj);disp(roj);disp(xj');
disp('Gauss-Seidel')
[xg,iterg,rog]=gauss_seidel(A,b,x0,TOL,10000);
disp(iterg);disp(rog);disp(xg');
disp('Respuesta correcta')
disp(xx')




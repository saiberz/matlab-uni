clc
A=[1 2;
    3 4];
A=round(rand(6)*18-9)
[L,U]=doolitle(A)
(L*U-A)

A=round(rand(6)*18-9)
[L,U]=cholesky(A)
chol(A)
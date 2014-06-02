%Choleskey se aplica a una matriz simetrica
%y definida positiva
%Si todos los menores de una matriz es>0 
%Entonces la matriz es definida positiva

while 1
A=round(rand(4)*50);
A=A+A'
if menores(A)
    break;
end
end
[L,U]=cholesky(A)
chol(A)
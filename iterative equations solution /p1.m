%Conceptos importantes
clc
disp('Norma infinito')
A=[   3 -24   5
    -12   -13  10
    -14   1  -4]


max(sum(abs(A'))')
norm(A,inf)

A=[2 4
   12 4]
disp('Autovalores de A')
lambda=eig(A)

disp('Radio espectral')
ro=max(abs(eig(A)))

disp('norma cuadrada A')
max(abs(eig(A*A')))^0.5
norm(A,2)
disp('Verificando si A es estrictamente diagonalmente dominante');
n=4;
A=round(rand(n)*20-10)+5*diag(diag(round(rand(n)*20-10)))
fil=sum(abs(A'))-diag(abs(A))'
dia=diag(abs(A))'
if sum(dia>fil)==length(A) 
     fprintf('Es estrictamente diagonal dominante\n');
else
     fprintf('No es estrictamente diagonal dominante\n');
end


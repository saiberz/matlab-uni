function x=facdol(A,b)
[L,U]=doolitle(A)
z=sus_progre(L,b)
x=sus_regre(U,z)

%susticion regresiva

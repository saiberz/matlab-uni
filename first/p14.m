A=round(rand(4)*18-9); b=round(rand(4,1)*18-9);
[L,U]=doolitle(A)
z=sus_progre(L,b)
x=sus_regre(U,z)
xexacta=inv(A)*b
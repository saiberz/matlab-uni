function n=calcifsig(A,a)
er=abs(A-a)/abs(A);
n=0; %Cantidad de cifras decimales significtivas exactas
while  er<=5*10^-n
   n=n+1;
end
n=n-1;
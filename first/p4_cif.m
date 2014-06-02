clc;
lista=[91806.916 
       91806.9161
       91800.91608280156
       91806.9260
       91800];
for i=1:length(lista)
        A=91806.91608279256; a=lista(i); er=abs(A-a)/abs(A);
        fprintf('\nEjemplo %d\n',i)
        fprintf('  Valor exacto=%.20f\n',A);
        fprintf('  Valor aproxi=%.20f\n',a);
        fprintf('  Error relati=%.20f\n',er);
        n=0; %Cantidad de cifras decimales significtivas exactas
        while  er<=5*10^-n
           n=n+1;
        end
        n=n-1;
        fprintf('    Referencia=%.20f\n',5*10^-n);
        fprintf('    Tiene %d cifras significativas\n',n);
end

    
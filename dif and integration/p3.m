%Aproximaciones con algunas formulas abiertas y cerradas de Newton-Cotes
%Autor: Christian A. Morales
%
%ENTRADAS: tipo de formula (abierta o cerrada), n, x0, xn y fx.
%SALIDAS: r (aproximaci?n).
%
%syms('tipoFormula', 'n', 'x0', 'xn', 'funcion', 'h', 'r', 'error', 'OK', 'opcion', 'nombre', 'salida');
fprintf(1,'\nAPROXIMACION DE INTEGRALES MEDIANTE NEWTON-COTES.\n');
fprintf(1,'Recuerde que:\nEn las formulas cerradas,\n   si n=1: Regla trapezoidal,\n   si n=2: De Simpson,\n   si n=3: Regla de tres octavos de Simpson.');
fprintf(1,'\nEn las formulas abiertas,\n   si n=0: Regla del punto medio.\n\n');
OK = 0;
while OK == 0
    fprintf(1,'Ingrese el tipo de formula\n1. Cerrada\n2. Abierta\n');
    tipoFormula = input(' ');
    if tipoFormula == 1 | tipoFormula == 2
        OK = 1;
    else
        fprintf(1,'ERROR: Ingrese nuevamente.\n');
    end
end
if tipoFormula == 1
    OK = 0;
    while OK == 0
        fprintf(1,'Ingrese n (entre 1 y 4):\n');
        n = input(' ');
        if n == 1 | n == 2 | n == 3 | n == 4
            OK = 1;
        else
            fprintf(1,'ERROR: Ingrese nuevamente.\n');
        end
    end
else
    OK = 0;
    while OK == 0
        fprintf(1,'Ingrese n (entre 0 y 3):\n');
        n = input(' ');
        if  n == 0 | n == 1 | n == 2 | n == 3
            OK = 1;
        else
            fprintf(1,'ERROR: Ingrese nuevamente.\n');
        end
    end
end
if tipoFormula == 1
    fprintf(1,'Ingrese x0:\n');
else
    fprintf(1,'Ingrese x-1:\n');
x0 = input(' ');
end
if tipoFormula == 1
    fprintf(1,'Ingrese x%d:\n', n);
else
    fprintf(1,'Ingrese x%d:\n', n+1);
end
xn = input(' ');
fprintf(1,'Ingrese f(x) en terminos de x:\n');
fprintf(1,'Por ejemplo: sin(x)\n');
funcion = input(' ');
f = inline(funcion,'x');
if tipoFormula == 1
    h=(xn-x0)/n;
    if n == 1
        r = (h/2)*(f(x0)+f(xn));
    end
    if n == 2
        r = (h/3)*(f(x0)+4*f(x0+h)+f(xn));
    end
    if n == 3
        r = ((3*h)/8)*(f(x0)+3*f(x0+h)+3*f(x0+2*h)+f(xn));
    end
    if n == 4
        r = ((2*h)/45)*(7*f(x0)+32*f(x0+h)+12*f(x0+2*h)+32*f(x0+3*h)+7*f(xn));
    end
else
    h=(xn-x0)/(n+2);
    if n == 0
        r = 2*h*f(x0+h);
    end
    if n == 1
        r = ((3*h)/2)*(f(x0+h)+f(xn-h));
    end
    if n == 2
        r = ((4*h)/3)*(2*f(x0+h)-f(x0+2*h)+2*f(xn-h));
    end
    if n == 3
        r = ((5*h)/24)*(11*f(x0+h)+f(x0+2*h)+f(xn-2*h)+11*f(xn-h));
    end
end
error = abs(double(int(funcion,x0,xn))-r);
fprintf(1,'\nSeleccione el tipo de salida\n');
fprintf(1,'1. En pantalla\n');
fprintf(1,'2. En archivo de texto\n');
fprintf(1,'3. En pantalla y archivo de texto\n');
opcion = input(' ');
%imprime en archivo o en pantalla
if opcion == 1 | opcion == 2
    if opcion == 2
        fprintf(1,'Ingrese el nombre del archivo de la forma: drive:\\name.ext\n');
        fprintf(1,'Por ejemplo:   A:\\Output.dta\n');
        nombre = input(' ','s');
        salida = fopen(nombre,'wt');
    else
        salida = 1;
    end
    fprintf(1,'\n');
    fprintf(salida,'*** Aproximaciones con algunas formulas abiertas y cerradas de Newton-Cotes ***\n\n');
    if tipoFormula == 1
        fprintf(salida,'Formula cerrada con n = %d\n', n); 
    else
        fprintf(salida,'Formula abierta con n = %d\n', n); 
    end
    fprintf(salida,'Aproximaci?n = %.10e\n', r);
    fprintf(salida,'Error = %.10e\n', error);
    if salida ~= 1
        fclose(salida);
        fprintf(1,'Archivo %s creado exitosamente\n',nombre);
    end
%imprime en archivo y en pantalla
else
    fprintf(1,'Ingrese el nombre del archivo de la forma: drive:\\name.ext\n');
    fprintf(1,'Por ejemplo:   A:\\Output.dta\n');
    nombre = input(' ','s');
    salida = fopen(nombre,'wt');
    %impresi?n en pantalla
    fprintf(1,'\n*** Resultados de aproximaciones mediante Newton-Cotes ***\n\n');
    if tipoFormula == 1
        fprintf(1,'Formula cerrada con n = %d\n', n); 
    else
        fprintf(1,'Formula abierta con n = %d\n', n); 
    end
    fprintf(1,'Aproximaci?n = %.10e\n', r);
    fprintf(1,'Error = %.10e\n', error);
    %impresi?n en archivo
    fprintf(salida,'\n*** Resultados de aproximaciones mediante Newton-Cotes ***\n\n');
    if tipoFormula == 1
        fprintf(salida,'Formula cerrada con n = %d\n', n); 
    else
        fprintf(salida,'Formula abierta con n = %d\n', n); 
    end
    fprintf(salida,'Aproximaci?n = %.10e\n', r);
    fprintf(salida,'Error = %.10e\n', error);
    fclose(salida);
    fprintf(1,'Archivo %s creado exitosamente\n',nombre);
end
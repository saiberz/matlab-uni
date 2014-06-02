clear
clc
A=[0 -2 2 4
    12 -8 6 10
    3 -13 9 3
    -6 4 1 -18];
b=[12 34 27 -38]';
x=solucion_slb(A,b)
x=solucion_slpp(A,b)
x=inv(A)*b

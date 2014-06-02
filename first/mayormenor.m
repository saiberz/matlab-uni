function [M,m]=mayormenor(a,b)
if (a>b)
    M=a;
    m=b;
else
    M=b;
    m=a;
end
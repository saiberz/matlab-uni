function es=menores(A)
es=1;
for i=1:length(A)
    if  det(A(1:i,1:i))<=0
        es=0;
    end
end

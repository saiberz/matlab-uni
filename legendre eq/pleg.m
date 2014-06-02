function  [c,x]=pleg(n)
% pn_1=1;
% pn=[1 0];
% if n==0
%     p=pn_1;
% elseif n==1
%     p=pn;
% else
%     for i=2:n
%         p=((2*n+1)/(n+1))*conv([1 0],pn)-(n/(n+1))*pn_1;
%         pn_1=pn;
%         pn=p;
%     end
% end
p=[1];
for i=1:n
    p=conv(p,[1 0 -1]);
end
for i=1:n
    p=polyder(p);
end
p=p*(1/(2^n*factorial(n)));
x=roots(p);
dp=polyder(p);
c=2./((polyval(dp,x).^2).*(1-x.^2));

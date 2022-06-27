function [quantized,levels] = quantizator(x,n)
xmax=max(x);
xmin=min(x);
step=(xmax-xmin)/n;
baselevel=step*ceil(xmin/step);
levels=zeros(1,n);
for i=0:1:n-1
    levels(i+1)=baselevel+i*step;
end
quantized=zeros(size(x));
for j=1:length(x)
    t=abs(levels-x(j));
    [~, ind]=min(t);
    quantized(j)=ind-1;
end
end
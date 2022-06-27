function dequantized = dequantiztor (x,n,minn,maxx)
nobits=log2(n);
xvec=zeros(1,length(x)/nobits);
for i=0:length(xvec)-1
    xvec(i+1)= bi2de(x(i*nobits+1:(i+1)*nobits),'left-msb');
end
x=xvec;
step=(maxx-minn)/n;
baselevel=step*ceil(minn/step);
dequantized=baselevel+(step*x);
end
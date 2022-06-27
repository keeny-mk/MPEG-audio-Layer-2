function bits_out = bitallocator(smr,maxbits)
    smrmax=max(smr);
    smrmin=min(smr);
    step=(smrmax-smrmin)/(maxbits+1);
    zerolevel=step*ceil(smrmin/step);
   for i=0:1:maxbits
    vect(i+1)=zerolevel+i*step;
   end
   for j=1:length(smr)
    dis=abs(vect-smr(j));
    [~, ind]=min(dis);
    bits_out(j)=ind-1;
   end
end


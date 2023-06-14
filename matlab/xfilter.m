function x = xfilter(I)
   x = double(adapthisteq(I))/65535;  
   x = log(1.1+x*70);
   x1 = double(I)/65535;
   x2 = x;
   x = x1*1.2+x2*0.2;
   x = 1-x/(max(max(x))-min(min(x)));
end


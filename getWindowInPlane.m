function[out]=getWindowInPlane(k,n,m,windowSize,Size,outputs)
            out=zeros(1,windowSize^2);
         if(windowSize==Size)
             out=outputs(:,:,k);
             out1=out';
             out=out1(:);
         else
           offset=(windowSize-1)/2;
           x=n-offset;
           y=m-offset;
           x1=n+offset;
           y1=m+offset;
           count=1;
for i=x:x1
    for j=y:y1
   try
      out(count)=outputs(i,j,k); 
   catch exception
      out(count)=0; 
   end
    count=count+1;
    end
end
out=out';
         end
end
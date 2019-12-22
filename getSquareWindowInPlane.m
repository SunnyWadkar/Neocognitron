function[out]=getSquareWindowInPlane(k,n,m,windowSize,Size,outputs)
            out=zeros(windowSize,windowSize);
            if(windowSize==Size)
                out=outputs(:,:,k);
            else
           offset=(windowSize-1)/2;
           x=n-offset;
           x1=n+offset;
           y=m-offset;
           y1=m+offset;
           for i=x:x1
               for j=y:y1
                   try
                    out(i-x+1,j-y+1)=outputs(i,j,k); 
                  catch exception
                    out(i-x+1,j-y+1)=0; 
                   end
               end
           end                
            end            
        end
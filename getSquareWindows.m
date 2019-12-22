 function[out]=getSquareWindows(K,n,m,windowSize,Size,outputs)
          out=zeros(windowSize,windowSize,K);
          for k=1:K
              out(:,:,k)=getSquareWindowInPlane(k,n,m,windowSize,Size,outputs);
          end    
        end
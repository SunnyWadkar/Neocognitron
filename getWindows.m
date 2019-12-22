function[out]=getWindows(K,n,m,windowSize,Size,outputs)
            out=zeros(K,windowSize^2);
            for k=1:K
                out(k,:)=getWindowInPlane(k,n,m,windowSize,Size,outputs);
            end
        end
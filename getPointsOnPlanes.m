 function[output]=getPointsOnPlanes(K,n,m,outputs)
            output=zeros(1,K);
            for i=1:K
                output(i)=outputs(n,m,i);
            end
        end
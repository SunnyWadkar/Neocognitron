        function dec=verifyTraining(inputs,s,aw,bw,c,d)
            outloc=[];
            for i=1:size(inputs,3)
                rc=propagateNeocognitron(inputs(:,:,i),s,aw,bw,c,d,0);
                 if(any(outloc==rc))
                           dec=false;
                           return
                 else
                     outloc(i)=rc;
                     dec=true;
                 end     
            end
        end
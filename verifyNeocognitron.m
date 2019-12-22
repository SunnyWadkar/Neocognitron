 function e=verifyNeocognitron(inputs,s,aw,bw,c,d,t)
            output=0;
                for i=1:size(t,3)
                    r1=propagateNeocognitron(inputs(:,:,i),s,aw,bw,c,d,0);
                    r2=propagateNeocognitron(t(:,:,i),s,aw,bw,c,d,0);
                    if(r1~=r2)
                        output=output+1;
                    end
                end
                e=output/size(t,3);
        end
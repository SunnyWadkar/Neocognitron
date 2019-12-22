function[]=runTrainingSet(s,a,b,c,d,inputs,loops)
            for i=1:loops
                for j=1:size(inputs,3)
                   I=inputs(:,:,j);
                   rec=propagateNeocognitron(I,s,a,b,c,d,true);
                end
            end
        end
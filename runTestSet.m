function[]=runTestSet(inputs,s,aw,bw,c,d)     
            for i=1:size(inputs,3)
                   rec=propagateNeocognitron(inputs(:,:,i),s,aw,bw,c,d,false);
                   disp(rec);
            end
end
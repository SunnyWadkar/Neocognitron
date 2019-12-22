function[ind]=propagateNeocognitron(input,s,aw,bw,c,d,t)
              output=input;
              for l=1:s.numLayers
              output=propagateSLayer(l,output,aw,bw,s,c,t);
              output=propagateCLayer(l,s,d,output);
              end
              out=getPointsOnPlanes(s.numCPlanes(end),1,1,output);
              [~,ind]=max(out);
        end
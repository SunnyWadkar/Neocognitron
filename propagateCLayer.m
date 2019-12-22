function output=propagateCLayer(layer,s,d,inputs)
offset=(s.sLayerSizes(layer)-s.cLayerSizes(layer))/2;
output=zeros(s.cLayerSizes(layer),s.cLayerSizes(layer),s.numCPlanes(layer));
        for n=1:s.cLayerSizes(layer)
           for m=1:s.cLayerSizes(layer)
               windowInEachPlane=getWindows(s.numSPlanes(layer),n+offset,m+offset,s.cWindowSize(layer),s.sLayerSizes(layer),inputs);
               vcOutput=propagateVCCell(layer,s,d,windowInEachPlane);
               for k=1:s.numCPlanes(layer)
                   output(n,m,k)=propagateCCell(layer,s,d,windowInEachPlane(k,:),vcOutput);
               end
           end
        end
   end
function [output]=propagateSLayer(layer,input,a,b,s,c,t)
output=zeros(s.sLayerSizes(layer),s.sLayerSizes(layer),s.numSPlanes(layer));
vsOutput=zeros(s.sLayerSizes(layer),s.sLayerSizes(layer));
clayersizes=[s.inputLayersize s.cLayerSizes];
offset=(clayersizes(layer)-s.sLayerSizes(layer))/2;
planes=[1 s.numCPlanes];
           for n=1:s.sLayerSizes(layer)
               for m=1:s.sLayerSizes(layer)
                windowsFromEachPlane=getWindows(planes(layer),n+offset,m+offset,s.sWindowSize(layer),clayersizes(layer),input);
                vsOutput(n,m) =propagateVSCell(layer,s,c,windowsFromEachPlane);
                for k=1:s.numSPlanes(layer)
                    output(n,m,k)=propagateSCell(s.r(layer),windowsFromEachPlane,vsOutput(n,m),b(1,layer).Object(k),a(1,layer).Object(:,:,k));
                end
               end
           end
           if(t)
             SLayertraining(layer,input,output,vsOutput,a,b,c,s);
             output=propagateSLayer(layer,input,a,b,s,c,false);
           end
end
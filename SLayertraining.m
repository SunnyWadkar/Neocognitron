function[]=SLayertraining(layer,input,output,vOutput,a,b,c,s)
    c1=c(layer,:);
    c1=c1(1:(s.sWindowSize(layer)^2));
    clayersizes=[s.inputLayersize s.cLayerSizes];
    cplanes=[1 s.numCPlanes];
    reploc=getRepresentativeCells(s.numSPlanes(layer),s.sLayerSizes(layer),s.sColumnSize(layer),output);
            for k=1:s.numSPlanes(layer)
                 p=reploc(k,:);               
                if(all(p))
                   delta=(s.q(layer)/2)*vOutput(p(1),p(2));
                    b(1,layer).Object(k)=b(1,layer).Object(k)+delta;
                    for ck=1:cplanes(layer)
                        in=getWindowInPlane(ck,p(1),p(2),s.sWindowSize(layer),clayersizes(layer),input);  
                        delta1=s.q(layer)*c1.*in';
                        a(1,layer).Object(ck,:,k)=a(1,layer).Object(ck,:,k)+delta1;
                    end
                end
            end
        end
function[a,b]=InitializeReinforcedWt(layer,s)
cplanes=[1 s.numCPlanes];
b=zeros(1,s.numSPlanes(layer));
b=HandleObject(b);
a=randi([0 999],cplanes(layer),s.sWindowSize(layer)^2,s.numSPlanes(layer));
a=s.MF.*a./1000;
a=HandleObject(a);
end
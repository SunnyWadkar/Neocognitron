function[s aw bw c d]=InitializeNetwork()
s=NeocognitronStructure;
[c d]=InitializeFixedWts(s);   
    for l=1:s.numLayers
        [a b]=InitializeReinforcedWt(l,s);
        aw(1,l)=a;
        bw(1,l)=b;
    end
end
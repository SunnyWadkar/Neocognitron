
classdef NeocognitronStructure
    properties
        inputLayersize=16;
        numLayers=3;
        numSPlanes=[40 40 40];
        numCPlanes=[40 40 40];
        sLayerSizes=[16 8 2];
        cLayerSizes=[12 6 1];
        sWindowSize=[5 5 5];
        cWindowSize=[5 5 2];
        sColumnSize=[5 5 2];
        r=[4.87 1.44 1.57];
        q=[0.1 9.6 13.94];
        alpha=0.478;
        MF=0.4;
        gamma = [0.11,0.42,0.06];
        delta = [0.49,0.87,0.52];
        delta_bar = [0.12 0.006 0.78];
    end  
end

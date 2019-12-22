        function[c d]=InitializeFixedWts(s)
            c(1,:)=generateMonotonic(s.gamma(1),s.sWindowSize(1),s.sWindowSize(1),1,true);
            for l=2:s.numLayers
                c(l,:)=generateMonotonic(s.gamma(l),s.sWindowSize(l-1), s.sWindowSize(l), s.numCPlanes(l-1), true);
            end
            
            d(1,:) = generateMonotonic(s.delta(1),s.cWindowSize(1),s.cWindowSize(1),s.numSPlanes(1), false);
            d(1,:)=d(1,:).*s.delta_bar(1);
            for l=2:s.numLayers
             d(l,:) = generateMonotonic(s.delta(l), s.cWindowSize(l-1),s.cWindowSize(l),s.numSPlanes(l), false);
             d(l,:)=d(l,:).*(s.delta_bar(l));
            end      
        end
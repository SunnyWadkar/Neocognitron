function[loc]=getLocationofMax(sColumn,center,windowSize)
            [xmax,ind]=max(sColumn(:));
            [loc(1),loc(2),loc(3)]=ind2sub(size(sColumn),ind);
            if(xmax==0)
                loc=[0 0 0];
            end;
            offset=(windowSize-rem(windowSize,2))/2;
            if(all(loc))
            loc(1)=loc(1)+center(1)-offset-1;
            loc(2)=loc(2)+center(2)-offset-1;
            loc(3)=loc(3);
            end
        end
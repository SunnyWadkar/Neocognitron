function[p]=getMaxperPlane(plane,listloc,outputs)
            maxval=0;
            p=[0 0];
            for i=1:size(listloc,1)
                temp=listloc(i,:,:);
                if(all(temp))
                if(temp(3)==plane)
                    z=outputs(temp(1),temp(2),temp(3));
                    if(z>maxval)
                     maxval=z;
                     p=temp(1:2);
                    end
                end
                end
            end
end
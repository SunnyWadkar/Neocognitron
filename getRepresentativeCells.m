 function[reps]=getRepresentativeCells(K,Size,windowSize,outputs)
            points=[];
            count=1;
            if(windowSize==Size)
                sColumn=getSquareWindows(K,floor(Size/2)+1,floor(Size/2)+1,windowSize,Size,outputs);
                temp=getLocationofMax(sColumn,[floor(Size/2)+1 floor(Size/2)+1],windowSize);
                points(count,:)=temp;
            else
               offset=(windowSize-1)/2;
               for n=offset+1:Size-offset
                   for m=offset+1:Size-offset
                       sColumn=getSquareWindows(K,n,m,windowSize,Size,outputs);
                       temp = getLocationofMax(sColumn,[n m],windowSize);
                       if(all(temp))
                       if(isempty(mfind(temp,points)))
                           points(count,:)=temp;
                           count=count+1;
                       end
                       end
                   end
               end
            end
            for k=1:K
                reps(k,:)=getMaxperPlane(k,points,outputs);    
            end
        end
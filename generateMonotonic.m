 function[output]=generateMonotonic(base,previouswindowsize,size,planes,norm)
            center=[(size+1)/2 (size+1)/2];
            index=1;
            output=zeros(1,size^2);
            for n=1:size
                for m=1:size
                    output(index)=base^pdist2(center,[n m]);
                    index=index+1;
                end
            end
            if(norm)
                sum1=sum(output);
                mul=1./(planes*sum1);
                output=mul.*output;
            end
            output=[output,zeros(1,(previouswindowsize^2-size^2))];
        end
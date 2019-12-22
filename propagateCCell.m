        function[output]=propagateCCell(layer,s,d,input,v)
        d=d(layer,:);
        d=d(1:(s.cWindowSize(layer)^2));
            output=input*d';
            output=((1+output)/(1+v))-1;
            output=output/(s.alpha+output);
            output=max(output,0);
%             if(output<0)
%                 output=0;
%             else
%              output=output/(s.alpha+output);   
%             end
        end

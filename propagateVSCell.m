function[output]=propagateVSCell(layer,s,c,inputs)
            c1=c(layer,:);
            c1=c1(1:(s.sWindowSize(layer)^2));
            for ck=1:size(inputs,1)
            out(ck)=(inputs(ck,:).^2)*c1';
            end
            output=sum(out);
            output=sqrt(output);
        end


function[output]=propagateVCCell(layer,s,d,inputs)
            d1=d(layer,:);
            d1=d1(1:(s.cWindowSize(layer)^2));
            for sk=1:size(inputs,1)
                out(sk)=d1*inputs(sk,:)';
            end
            output=sum(out);
            output=output/(size(inputs,1));
            end

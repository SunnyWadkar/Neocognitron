function[output]=propagateSCell(r,inputs,vInput,b,a)
            for ck=1:size(inputs,1)
                out(ck)=a(ck,:)*inputs(ck,:)';
            end;
            output=sum(out);
            denominator=1+(((2*r)/(1+r))*b*vInput);
            output=((1+output)/denominator)-1;
            output=r*max(output,0);           
end
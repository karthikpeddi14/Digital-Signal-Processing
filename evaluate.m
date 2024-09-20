function bool = evaluate(dtft,wdtft)
bool = 1;
len = length(dtft);

for i = 1:len/2
    if(bool==0)
        break
    end

    if(wdtft(i)<0.2*pi)
        if(dtft(i)>1.01 || dtft(i)<0.99)
            bool=0;
        end
    elseif(wdtft(i)>0.3*pi)
        if(dtft(i)>0.01)
            bool=0;
        end
    end
end
end
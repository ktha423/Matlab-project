function [q] = CreateComplexGrid2(z,c,cutoff)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
i = 1;
q = 1;
complex = z^2 + c;
while i <= cutoff
    absolute = abs(complex);
    if absolute < 3
        q = q + 1;
        complex = complex^2 + c;
        i = i + 1;
        
    else
        i = cutOff;
    end
end

if absolute < 3
    q = 0;
end

    
    
        
    




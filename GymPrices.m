function [gymcost] = GymPrices(weeks,passlength,passcost,freetrial)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
[gyms,~] = size(passcost);
gymcost = zeros(1,gyms);
for i = 1 : gyms
    remainder = weeks - freetrial(i);
    j = 1;
    while remainder > 0
        if passcost(i,j) == -1
            j = j+1;
        end
        if remainder >= passlength(j) && passcost(i,j) ~= -1
            remainder = remainder - passlength(j);
            gymcost(i) = gymcost(i) + passcost(i,j);
        end
        if remainder < passlength(j)
            if j < 3
                j = j+1;
            end
            
            
        end
            
        
        end
        
        
    end
end







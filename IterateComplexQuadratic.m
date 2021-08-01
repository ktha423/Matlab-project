function [iterations] = IterateComplexQuadratic(z,c,cutOff)
%returns how many no. of iterations did it take for the absolute value of
%the complex quadratic equation f(z)= z^2 + c >= 3 where z is replaced
%by f in the next iteration. The number of times this process is repeated
%is based on the cutOff value. If maximum iterations are reached and
%absolute value is still < 3, the output = 0 indicating the initial z value
%is a member of julia set associated with c.
%
% INPUTS: z(initial complex value that we begin the iteration process with)
%         c(specified complex value (used to generate particular Julia set)
%         cutOff(postive integer determining max no. of iterations)
%
% OUTPUT: iterations(no. of iterations it took for the absolute to equal or
% be above 3 based on the equaiton f(z) = z^2 + c, and finding absolute of
% it each time to determine contiuning. Once max no. of iterations is
% reached(based on cutOff), if absolute was still under 3, returns 0,
% otherwise, returns no. of times it took to get above or equal to 3
% Author : Disguised K 

complex = z^2 + c;

iterations = 1;
i = 0; %intializing while loop with cutOff,startwith i = 0,so used < sign

while i < cutOff
    %finding absolute value each time and comparing if it is >= to 3
    absolute = abs(complex);
    if absolute >= 3
        i = cutOff; %stops the loop if it is and returns no. of iterations
    else
        iterations = iterations + 1;
        z = complex; %assigning new z value each time with new iteration
        complex = z^2 + c;
        i = i + 1;
    end
    
end

if absolute < 3     %checking to see if final absolute was below 3
    iterations = 0;
end

end





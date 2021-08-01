function [natureArray] = JuliaSetPoints(complexArray,c,cutOff)
%This function determines if each point in grid value is associated with
%specified complex value c and is a member of julia set. It returns a 2D
%array where it had evaluated each grid point and grid points which are in
%Julia set have a value of 0 while if it didnt, it will have value that
%corresponds to number of quadractic iterations it took to exit the bounded
%region of Juliet set which is based on IterateComplexQuadratic function.
%
% INPUTS: complexArray(2D array storing grid of complex values whose nature
% we are determining based on c (complex value)
%       : c(specified complex value (used to generate particular Julia set)
%       : cutOff (determines max iterations to perform by
% IterateComplexQuadratic)
%
% OUTPUT: natureArray(2D array describing nature of each point on grid of
% the complexArray i.e. whether they are in Julia set or not. A value of 0
% indicates grid point is in Julia set assoicated with c(complex value)
% while any other value indicates how many iterations it took to exit
% bounded region(where max possible value is determined by cutOff)
% Author : Disguised K 

[rows,cols] = size(complexArray);   %finding rows and cols of output
natureArray = zeros(rows,cols);     %preallocation of output
for i = 1 : rows
    for j = 1 : cols
        z = complexArray(i,j);
        % using IterateComplexQuadractic to determine no. of iterations and
        % if value is in Julia point of not
        iterations = IterateComplexQuadratic(z,c,cutOff);
        natureArray(i,j) = iterations;
    end
end

end


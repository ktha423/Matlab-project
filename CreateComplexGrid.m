function [Gridarray] = CreateComplexGrid(n)
%Creates a 2D array of size n x n which can be visualized as a storage of
%complex values which are equally spaced between x =(-2,2) and y =(2i,-2i)
%
%   INPUT = n (a positive integer which specifies rows and cols for the
%output 2D array
%
%   OUTPUT = n x n 2D array representing a grid over a complex plane where
%4 corners of the grid are the points -2+2i (top left), 2+2i (top
%right) , -2-2i (bottom left) and 2-2i (bottom right)
% Author: Disguised K

%sets the amount of evenly spaced x and y points
xPoints = linspace(-2,2,n);
yPoints = linspace(2i,-2i,n);

Gridarray = zeros(n); %preallocating outputArray
[rows,cols] = size(Gridarray);

for i = 1 : rows
    for j = 1 : cols
        %creating the outputArray by making complex values from real(x) and
        %imaginary (y) values
        Gridarray(i,j) = xPoints(j) + yPoints(i);
    end
    
end

end




function [RGBcell] = GenerateJuliaSets(complexArray,gridSize,colorArray)
%This function creates a cellarray where each element contains RGB image of
%a julia set which are based on complexValues from complexArray. It calls
%onto other functions such as CreateComplexGrid, JuliaSetPoints and
%ColourJulia to do this.
%
% INPUTS : complexArray(1D array of complex values to get Julia set
% fractals for. Creating an image using each complex value with appropriate
% points from gridSize which can be done using CreateComplexGrid,
% JuliaSetPoints and ColourJulia function)
%        : gridSize (a positive integer specifies what size grid will be
% e.g 3 would indicated 3 x 3 grid)
%        : colorArray(2D array of size r x 3 containg a color map with rows
% of values between 0 and 1 indicating percentage of red, green and blue
% respectively, for the colour in that row)
%
% OUTPUTS : RGBcell (a cell array where each element contains
% 3D array of uint8 values of a  Julia set)
% This functions calls to several other functions whose descriptions can be
% read by using 'help' on command window to understand their inputs and
% outputs.
% Author : Disguised K 


%finding the rows which determine the cutoff value used in JuliaSetPoints
[cutOff,~] = size(colorArray);
%using CreateComplexGrid function to create the appropriate grid
grid = CreateComplexGrid(gridSize);
RGBcell = cell(1,length(complexArray)); %preallocating cellArray

for i = 1 : length(complexArray)
    %looking at each complexValue and creating associated Julia sets
    complexValue = complexArray(i);
    natureArray = JuliaSetPoints(grid,complexValue,cutOff);
    imageArray = ColourJulia(natureArray,colorArray);
    RGBcell{i} = imageArray;
end



end


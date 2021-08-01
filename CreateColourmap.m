function [colourmapArray] = CreateColourmap(startColour,endColour,rows)
%This function creates an array of size n x 3 where each row represent a
%colour, where values in each row are between 0 and 1 inclusive
%representing perecentage of red, green and blue. It is creating a custom
%colour map with shades of colour which range from a specfied starting and
%end colour.
%
%  INPUTS : startColour(1x3 element array of colour values between 0 and 1
%           inclusive, for the starting colour of the map
%         : endColour (1x3 element array of colour values between 0 and 1
%         inclusive, for the ending colour of the map
%         : rows (essentially how many rows will the colourmap Array have)
%
%  OUTPUT : colourmapArray (essentially getting starting colour and ending
% colour and the middle values using linspace function based on how many
% rows are specified. rows x 3 array of colour values where each row
% represents a colour and values in each row are between 0 and 1 inclusive
% representing percentage of RGB respectively.) First col contains red
% value which are linearly spaced based on number of rows specifed from
% startColour(1) to endColour(1), Second & third cols contains blue and
% green values which are linearly spaced based on number of rows specifed
% from startColour(2) to endColour(2) and startColour(3) to endColour(3)
% respectively.
% Author : Disugised K

% creating linearly spaced red, green and blue colours to be used in
% creating the colourmap
red = linspace(startColour(1),endColour(1),rows);
green = linspace(startColour(2),endColour(2),rows);
blue = linspace(startColour(3),endColour(3),rows);

colourmapArray = zeros(rows,3); %preallocating outputArray

%col 1 corresponds to red, col 2 and 3 correspond to green and blue
%respectively.
for i = 1 : rows
    colourmapArray(i,1) = red(i);
    colourmapArray(i,2) = green(i);
    colourmapArray(i,3) = blue(i);
end


end


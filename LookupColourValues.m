function [colourValue] = LookupColourValues(colourName,colourCell,colourArray)
%This function finds colorvalues associated with a named color, from a cell
%array of colornames (colourCell) and the assoicated values
%from a 2D array of colors (colourArray)
%
% INPUTS : colourName (a string which contains name of a colour to look up)
%        : colourCell (cellArray which is compared to colourname and see if
%        that colour is in the colorCell cell array)
%        : colourArray (2D values arranged in a way where each row has 3
%        values which correspond to the row in colourCell cell array. E.g.
%        if row 2 of colourCell was 'Red' and row 2 of colourArray had
%        values 0 1 0, this would be associated with each other)
%
% OUTPUT : colourValue (1 x 3 element array of colour values of the colour
% looked up. Returns [0 0 0] if colour is not found in the colourCell,
% otherwise uses both inputs as explained to find colour values for the
% colour looked up
% Author : Disguised K

colourValue = zeros(1,3); %preallocating output
for i = 1 : length(colourCell)
    compareColour = colourCell{i};
    %comparing if any elements in colourCell contain colourName
    if strcmpi(compareColour,colourName)
        colourValue = colourArray(i,1:3);
        
        
    end
end
% condition to make sure error doesn't happen if the color is black as
% black has values of [0 0 0]
if colourValue == 0 &  ~strcmpi('black',colourName)
    fprintf(2,'Colour not found \n')
end


end



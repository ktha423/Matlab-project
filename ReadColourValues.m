function [colorCell,colourArray] = ReadColourValues(filename)
%This function reads a list of color names and values from a text file. It
% returns the colorname in a n x 1 cell array where n represents how many
% colors there were in the file, and a 2D array of color values of size
% r x 3 where each row contains the three colour values read in from
% the file and have values between 0 and 1 representing percentage of
% red,green and blue respectively. First col = amount of red, second col =
% amount of green and 3rd col = amount of blue.
%
% INPUTS : filename( string containing the filename of a text file that
% stores a mapping of colour names to colour values. Each line of the file
% has the name of the color and followed by 3 color values which are all
% seperated by a space. E.g one line could be 'red 0 1 1'
%
% OUTPUTS : colorCell(cellarray where each element is a color name stored
% as a string and has r rows and 1 coloumn where no. of rows correponds to
% no. of colors read from the file.
%         : colourArray(a 2D array of values of size r x 3 where each row
% contains 3 color values read from the file, where values are
% between 0 and 1 inclusive, indicating percentage of red,green,blue. i.e
% first colomn is percentage of red, second colomn is percentage of
% green  and 3rd is percentage of blue.)
% Author : Disguised K 
fid = fopen(filename,'r'); %opening file for reading
if fid == -1     %error message on command window when file isn't found
    fprintf(2,'Error opening file %s \n',filename);
    
    
else
    
    line = fgetl(fid); %gets the first line from the file
    i = 1; % i changes through the loop
    
    while ischar(line)  % while loop as long as line has characters
        space = strfind(line,' '); %finds space in the line
        colour = line(1:space(1)-1); %seperate color name
        data = line(space(1)+1: length(line)); %seprate color values
        data = str2num(data); %turning color values from string to number
        
        %adding color names to cellarray each time through the loop
        colorCell{i,1} = colour;
        
        colourArray(i,1:3) = data;
        line = fgetl(fid);
        i = i + 1;
    end
    fclose(fid); %closing the file
end

end












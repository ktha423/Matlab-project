function [imageArray] = ColourJulia(natureArray,colorArray)
%This function colours the points in a Julia set black and the points not
%in set an appropriate shade of colour selected from a colormap(colorArray)
%
% INPUTS : natureArray(2D array describing nature of each point.If a point
% is in Julia set, it will have a value of 0 while others will be based
% upon how many iterations it took it took to exit bounded region
%        : colorArray(2D array of size r x 3 containg a color map with rows
% of values between 0 and 1 indicating percentage of red, green and blue
% respectively, for the colour in that row)
%
% OUTPUTS: imageArray(an RGB 3D array of uint8 values, RGB array of Julia
% set based on nature of points (natureArray) and colors associated with it
% (colorArray)
%Author : Disguised K 

[rows,cols] = size(natureArray);
imageArray = zeros(rows,cols,'uint8'); %preallocation of image Output Array
for i = 1 : rows
    for j = 1 : cols
        %finding which row to access in the colorArray
        rownumber = natureArray(i,j);
        if rownumber ~= 0 %as any rownumber with value of 0 is in Julia set
            %and hence black i.e. 0 across all 3 colours which is done
            %by zeros function previously
            
            
            % essentially finding out how much color is associated with
            % each point
            % doing it like this instead of imageArray(i,j,1:3) =
            % colorArray(rownumber,1:3) * 255; saves a significant amount
            % of time for some reason
            imageArray(i,j,1) = colorArray(rownumber,1) * 255;
            imageArray(i,j,2) = colorArray(rownumber,2) * 255;
            imageArray(i,j,3) = colorArray(rownumber,3) * 255;
            
        end
        
    end
end


end


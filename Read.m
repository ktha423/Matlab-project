function [colourNames,colourValues] = Read(filename)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
fid = fopen(filename,'r');
if (fid == -1)
    disp(['Error opening file' filename]);
else
    line = fgetl(fid);
    i = 1;
    while (ischar(line))
        Data = split(line);

    
    colourNames{1,i} = Data{1};
    colourValues(i,1) = str2double(Data{2});
    colourValues(i,2) = str2double(Data{3});
    colourValues(i,3) = str2double(Data{4});

    

    

    
    line = fgetl(fid);
    i = i + 1;

  

        

        

       

    

    

      

    
    end
    fclose(fid);
end
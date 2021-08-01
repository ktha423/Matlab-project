% % rows = 3;
% % cols = 3;
% % imageArray = zeros(rows,cols,:);
% 
% % script to generate a small 100 x 100 Julia set
% grid100 = CreateComplexGrid(100);
% points = JuliaSetPoints(grid100,-0.79+0.15i,10); % note cutoff of 10
% J1 = ColourJulia(points,jet(10)); % use the jet colour map with 10 rows
% J2 = ColourJulia(points,hot(10)); % use the hot colour map with 10 rows
% figure(1)
% subplot(1,2,1)
% imshow(J1) % will produce the 100 x 100 pixel image below left
% subplot(1,2,2)
% imshow(J2) % will produce the 100 x 100 pixel image below right
% startColour = [1,2,3];
% endColour = [2,3,4] ;

% B = startColour <= 1;
% C = endColour <= 1;
% 
% if B == 1
%     disp('Right')
%     
% end

% celll = cell(1,10);
% for i = 1 : length(celll)
%     celll{i} = [i + 1,2];
% end
% disp(celll{2})

% script to test GenerateJuliaSets, will produce images below
% cvalues = [-0.8 + 0.2i, -0.8 + 0i, 0 - 0.2i] % 1D array of complex values
% ImageArray = GenerateJuliaSets(cvalues,500,jet(50));
% figure(1)
% subplot(1,3,1); imshow(ImageArray{1})
% subplot(1,3,2); imshow(ImageArray{2})
% subplot(1,3,3); imshow(ImageArray{3})

% fid = fopen('BasicColours.txt','r');
% line = fgetl(fid);
% 
% i = 1;
% while ischar(line)
%     spaceArray = strfind(line,' ');
%     colour = line(1:spaceArray(1)-1);
%     data = line(spaceArray(1)+1: length(line));
%     data = str2num(data);
%     name{i} = colour;
%     colourmap(i,[1:3]) = data;
%     line = fgetl(fid);
%     i = i + 1;
% end
% fclose(fid);   
%     
    
    
value = [0 0 0];
if value == [0 0 0] 
    disp('hi')
end

% % % q = IterateComplexQuadratic(0,0.5+i,3);
% % % w = IterateComplexQuadratic(0,0.5+i,2);
% % 
% % red = [0 1 2];
% % green = [1 2 3];
% % blue = [2 3 4];
% % 
% % for i = 1 : length(red)
% %     colourmapArray(i,1) = red(i);
% %     colourmapArray(i,2) = green(i);
% %     colourmapArray(i,3) = blue(i);
% %     
% %     colour(i,1:3) = [red(i),green(i),blue(i)];
% % end
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

clear
grid5 = CreateComplexGrid(5);
 points = JuliaSetPoints(grid5,-0.79+0.15i,100);

function [imageHeight, imageWidth]=drawOcean(imageName)
%create a figure
figure(1);

%read image
image=imread(imageName);

[imageHeight, imageWidth]=size(image);

%display image
imshow(imageName);

endfunction

function [newX, newY] = checkBoundary (squidX, squidY, imageWidth, imageHeight, radius)
newX=squidX;
newY=squidY;

if(squidX>imageWidth-radius)
newX=radius
elseif(squidX<radius)
newX=imageWidth-radius;
endif

if(squidY<radius)
newY=imageHeight-radius;
elseif(squidY>imageHeight-radius)
newY=radius;
endif


endfunction


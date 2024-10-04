function animateSquid ()

[imageHeight,imageWidth]=drawOcean("OceanImage.png")



width=3;
size=50;
radius=20;
radius1=20
xCenter=500;
xCenter1=700;
yCenter=1000;
yCenter1=1050;
circleLineWidth=5;
deltaYCircle=50;
maxRadius=100;
maxRadius1=100;
xMaxCenter=2000;
xMaxCenter1=2000;
squidMove = 100;
squidDeltaTheta = pi/3;
squidX = 300; % squid start x-location
squidY = 200; %
fishX=200;
fishY=500;
fishRadius=50;
fishForwardMove=100;
squidTheta = 0;
fishColor=[1 0 0];
fishLineWidth=50;

 for (clock = 1:30)
   %change the color of squid and bubbles
circleColor=[rand(1) rand(1) rand(1)];
color=[rand(1) rand(1) rand(1)];

 %change the position of squid and bubble size
 radius=maxRadius*rand(1);
 radius1=maxRadius1*rand(1);
 squidX=squidX+50
 yCenter=yCenter-deltaYCircle;
 yCenter1=yCenter1-deltaYCircle;


 squidTheta= squidTheta + squidDeltaTheta;
 squidX=squidX +squidMove*cos(squidTheta);
 squidY=squidY+squidMove*sin(squidTheta);


 fishX=fishX+fishForwardMove;


 %redraw objects
 h=drawSquid(size,color,width, clock, squidX, squidY, squidTheta);
 c=drawCircle(radius, xCenter, yCenter, circleColor, circleLineWidth);
 d=drawCircle(radius1, xCenter1, yCenter1, circleColor, circleLineWidth);
 fishHandle=drawFish (fishRadius, fishX, fishY, fishColor, fishLineWidth)

[squidX, squidY] = checkBoundary(squidX, squidY, imageWidth, imageHeight, 2*size);
[fishX, fishY] = checkBoundary(fishX, fishY, imageWidth, imageHeight, 2*fishRadius);

   pause (1);
   delete(h);
   delete(c);
   delete(d);
   delete(fishHandle);

 endfor
endfunction

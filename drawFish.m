function fishHandle = drawFish (fishRadius, fishX, fishY, fishColor, fishLineWidth)
lineSegments=50;
angleResolution=2*pi/lineSegments;
mouthTheta=pi/3;
theta= [mouthTheta : angleResolution : 2*pi-mouthTheta];

sinTheta=sin(theta);
cosTheta=cos(theta);

X=fishRadius*cosTheta;
Y=fishRadius*sinTheta;


%call get translate
t=getTranslate(fishX, fishY);
Z=ones(1,length(X));

circleMatrix = [X;Y;Z];


%Translator
circleMatrix=t*circleMatrix;
X=circleMatrix(1,:);
Y=circleMatrix(2,:);

fishHandle=line(X,Y);

set(fishHandle, 'Color', fishColor);
set(fishHandle, 'LineWidth', fishLineWidth );
endfunction

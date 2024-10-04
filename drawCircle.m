function circleHandle = drawCircle (radius, xCenter, yCenter, circleColor, circleLineWidth)

lineSegments=50;

angleResolution=2*pi/lineSegments;

theta= [0 : angleResolution : 2*pi];

sinTheta=sin(theta);
cosTheta=cos(theta);

x=radius*cosTheta;
y=radius*sinTheta;


%call get translate
T=getTranslate(xCenter, yCenter);
z=ones(1,length(x));

circleMatrix=[x;y;z];


%Translator
circleMatrix=T*circleMatrix;
x=circleMatrix(1,:);
y=circleMatrix(2,:);


circleHandle=line(x,y);

set(circleHandle, 'Color', circleColor);
set(circleHandle, 'LineWidth', circleLineWidth);

endfunction

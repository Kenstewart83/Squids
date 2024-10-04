function squidPoints = getSquid (size,clock)

parity=mod(clock,2);

if(parity == 0)

%squid body
 squidPoint1= [size ; 0 ; 1];
 squidPoint2= [0 ; size ; 1];
 squidPoint3= [0 ; -size ; 1];

 %squid left leg
 squidPoint4= [0       ; size/2 ; 1];
 squidPoint5= [-size   ;      0 ; 1];
 squidPoint6= [-2*size ; size/2 ; 1];

  %squid right leg
 legSeparation = size;
 squidPoint7= [0       ; size/2 - legSeparation ; 1];
 squidPoint8= [-size   ;  0  - legSeparation    ; 1];
 squidPoint9= [-2*size ; size/2 - legSeparation; 1];

 else
 %squid body
 squidPoint1= [size ; 0 ; 1];
 squidPoint2= [0 ; size ; 1];
 squidPoint3= [0 ; -size ; 1];

 %squid left leg
 squidPoint4= [0       ; size/2 ; 1];
 squidPoint5= [-size   ;   size ; 1];
 squidPoint6= [-2*size ; size/2 ; 1];

  %squid right leg
 legSeparation = size;
 squidPoint7= [0       ; size/2 - legSeparation ; 1];
 squidPoint8= [-size   ;  size  - legSeparation    ; 1];
 squidPoint9= [-2*size ; size/2 - legSeparation; 1];


endif

 squidPoints=[squidPoint1,squidPoint2,squidPoint3,squidPoint4,squidPoint5, squidPoint6,squidPoint7,squidPoint8, squidPoint9];

endfunction

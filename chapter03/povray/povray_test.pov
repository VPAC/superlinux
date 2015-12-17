
// Sample POVRay scene

#include "colors.inc"

camera {location <100,100,100> direction z*1 look_at <0,0,0>}

box {<-20,0,1>,<-40,40,60> pigment {White filter .7} double_illuminate}
box {<-20,0,-1>,<-40,40,-60> pigment {White filter .7}}

plane {y,0 pigment {SteelBlue}}

text {ttf "cyrvetic","VPAC JOB" 1, 0 scale 18 rotate <90,-180,0> translate <80,.1,-20> pigment {rgb <1,1,.5>} finish {ambient 1 diffuse 0}}

text {ttf "cyrvetic","COMPLETED" 1, 0 scale 18 rotate <90,-180,0> translate <90,.1,30> pigment {rgb <1,1,.5>} finish {ambient 1 diffuse 0}}

light_source {<-200,30,0> White*2.0}
light_source {<400,500,300> White shadowless}



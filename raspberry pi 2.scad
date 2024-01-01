l=90;
w=60;
h=20;
t=1.5;

slot=0;
trim=0;

module cutout(x,z,len,height)
{
    translate([x+t,-t,z+t]){
        cube([len,3*t,height]);
    }
}

// Bottom
cube([w+2*t,l+2*t,t]);


// Front
translate([0,0,0]){
    rotate([0,0,0]){ 
        difference(){
           cube([w+2*t,t,h+t]);
            
           translate([0,-t,h+t-trim]){
               cube([w*2*t,3*t,trim]);
           }
           cutout(18,0,15,5);
        }
    }
}

// Back
translate([w+2*t,l+2*t,0]){
    rotate([0,0,180]){
        difference(){
           cube([w+2*t,t,h+t]);
            
            cutout(4,0,52,18);
        }
    }
}

// Left
translate([0,l+2*t,0]){
    rotate([0,0,-90]){ 
        difference() {
           cube([l+2*t,t,h+t]);
           translate([0,t-slot,h+t-slot-1]){
               cube([l+2*t,slot+.2,slot]);
           }
        }
    }
}

// Right
translate([w+2*t,0,0]){
    rotate([0,0,90]){
        difference(){ 
           cube([l+2*t,t,h+t]);
            
            translate([0,t-slot,h+t-slot-1]){
               cube([l+2*t,slot+0.2,slot]);
           }
            //cutout(5,0,60,8);
            cutout(7,0,10,5);
            cutout(22,0,20,10);
            cutout(48,0,10,10);
            
        }
    }
}
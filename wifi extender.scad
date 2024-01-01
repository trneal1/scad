l=35;
w=26;
h=10;
t=1.5;

slot=0.80;
trim=2.5;

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
           //cutout(3,15,20,3);
           cutout(7,0,12,6);
        }
    }
}

// Back
translate([w+2*t,l+2*t,0]){
    rotate([0,0,180]){
        difference(){
           cube([w+2*t,t,h+t]);
            
            //cutout(1.5,15,23,3);
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
            //cutout(7.5,15,20,3);
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
            //cutout(7.5,15,20,3);
            
        }
    }
}
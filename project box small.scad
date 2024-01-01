l=35;
w=35;
h=30;
t=2;

slot=1.2;
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
           cutout(11.5,0,12,12);
           cutout(5,20,25,2.5);
        }
    }
}

// Back
translate([w+2*t,l+2*t,0]){
    rotate([0,0,180]){
        difference(){
           cube([w+2*t,t,h+t]);
            
            cutout(5,20,25,2.5);
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
            cutout(5,20,25,2.5);
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
            cutout(5,20,25,2.5);
            //cutout(35,0,25,6);
            
        }
    }
}
w=20;
l=20;
h=10;
t=1;

translate([0,w+t,t]){
    difference(){
cube([l+2*t,t,h]);
}

}

translate([0,0,t]){
    difference(){
cube([l+2*t,t,h]);
}
translate([-t,2,h-4]){
    cube([3*t,3,3]);
    }    
}

translate([l+t,0,t]){
   difference(){
    cube([t,w+2*t,h]);
        
    translate([-t,2,h-4]){
    cube([3*t,6,3]);
    }    
        
}
}

translate([0,0,t]){
difference(){
translate([0,0,0]){
    cube([t,w+2*t,h]);
}

translate([-t,6,4]){
    cube([3*t,2,2]);
}

translate([-t,4,4]){
    cube([3*t,1,1]);
}

translate([-t,0,0]){
    cube([3*t,6,3]);
}

}
}

cube([l+2*t,w+2*t,t]);
$fn=64;

difference(){
    translate([-31.5,-46,0])roundedcube(63,92,15,3);
    translate([-28,-42.5,3.5])cube([56,85,25]); //Hollow body
    translate([-27.8/2,-85/2-3.5,0])cube([27.8,19+3.5,4]); //SDCard
    translate([56/2-3.6-7.6,-85/2-.5-3.5,5.1])cube([8,6+3.5,3]);//Power port
    translate([56/2-11.4+1.2,-85/2+37.5,3.5+1.6])cube([11.4+3.5,15.1,6.15]); //HDMI Port
    translate([56/2-2-15.4,85/2-21.8+1,3.5+1.6])cube([15.4,21.8+3.5,13]); //Ethernet port
    translate([-56/2+18.8,85/2-17.2+7.7,3.5+1.6])cube([13.25,17.2,15.3]); //USB Port
    union(){
        translate([-56/2,85/2-12-14,3.5+1.6])cube([11.4,12,10.2]);
        translate([-56/2-3.3-3.5,85/2-12-14+6,3.5+1.6+3+3.35])rotate([0,90,0])cylinder(h=3.4+3.5,r=3.35);
    }// Headphone jack
    union(){
        translate([-56/2+2.1,-85/2+40.6,3.5+1.6])cube([10.0,9.8,13]);
        translate([-56/2-3.3-3.5,-85/2+40.6+5,3.5+1.6+4+3.35])rotate([0,90,0])cylinder(h=5.4+3.5,r=4.15);
    }// Video jack
  
}
module roundedcube(xdim, ydim, zdim, rdim){
hull(){
translate([rdim,rdim,rdim])sphere(r=rdim,h=zdim);
translate([xdim-rdim,rdim,rdim])sphere(r=rdim);
translate([rdim,ydim-rdim,rdim])sphere(r=rdim);
translate([xdim-rdim,ydim-rdim,rdim])sphere(r=rdim);
translate([rdim,rdim,zdim-rdim])sphere(r=rdim);
translate([xdim-rdim,rdim,zdim-rdim])sphere(r=rdim);
translate([rdim,ydim-rdim,zdim-rdim])sphere(r=rdim);
translate([xdim-rdim,ydim-rdim,zdim-rdim])sphere(r=rdim);
}   
}
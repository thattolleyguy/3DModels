$fn=64;

difference(){
translate([-31.5,-46,0])roundedcube(63,92,25,3);
translate([-28,-42.5,3.5])cube([56,85,25]);
    translate([-14,-46,0])cube([28,23,8]);
    translate([16.8,-46,5.1])cube([8,6,3]);
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
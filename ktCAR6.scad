

D=38;
W=89;
BD=18;

//block
blockh(0,20,-100,0,0,0);
blockh(400,20,-100,0,0,0);


//board
//FR
translate([0-220,-BD,-90]) cube([900,BD,90+250+150]);
//RE
translate([0-220,20+190+20,-90]) cube([900-BD,BD,90+250+150]);
//LB
translate([900-220+1,1,-90]) rotate([0,0,90]) cube([230+BD,BD,90+D/2]);
//LU
translate([900-220+1,1,D/2+1]) rotate([0,0,90-30]) cube([230+BD,BD,250+150-D/2]);
//R
translate([0-220+BD,1,-90]) rotate([0,0,90]) cube([230-2,BD,90+250+150]);
//TOP
translate([0-220,-BD,250+150+BD+1]) rotate([-90+70,0,0]) cube([900,BD,230+BD*2]);

//B
translate([W,0,D-BD]) rotate([90,0,90]) cube([230,BD,900-220-W*3-BD]);



//translate([140,60,100]) cube([300,100,100]);


//2x4
2x4(W,0,0,0,0,90,230);
2x4(W,D,D,0,-90,90,400-D-10);
2x4(W,230,D,0,-90,90,400-D-10);

2x4(900-220-BD,0,0,0,0,90,230);
2x4(900-220-W-BD,0,0,0,0,90,230);
2x4(900-220-W-BD,D,D,0,-90,90,400-D-10);
2x4(900-220-W-BD,230,D,0,-90,90,400-D-10);


module blockh(X,Y,Z,RX,RY,RZ)
{
    color("LightGrey")
    translate([X,Y,Z])
    rotate([RX,RY,RZ])
    cube([390/2,190,100]);
}
module block(X,Y,Z,RX,RY,RZ)
{
    color("LightGrey")
    translate([X,Y,Z])
    rotate([RX,RY,RZ])
    cube([390,190,100]);
}


module 2x4(X,Y,Z,RX,RY,RZ,L)
{
    color("Khaki")
    translate([X,Y,Z])
    rotate([RX,RY,RZ])
    cube([L,W,D]);
}
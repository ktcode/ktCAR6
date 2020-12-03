

D=38;
W=89;
BD=16;

//block
blockh(0,15,-100,0,0,0);
blockh(400,15,-100,0,0,0);


//board
//FR
translate([0-200,-BD,0]) cube([900,BD,400]);
//RE
translate([0-200,250-BD*2,0]) cube([900-BD,BD,400]);
//L
translate([900-200+1,1,0]) rotate([0,0,90-30]) cube([200+BD,BD,400]);
//R
translate([0-200+BD,1,0]) rotate([0,0,90]) cube([250-BD*2-2,BD,400]);
//TOP
translate([0-200,-BD,250+150+BD+1]) rotate([-90+70,0,0]) cube([900,BD,250]);

//B
//translate([900-200-W*2-BD-400-10,0,D-BD]) rotate([90,0,90]) cube([250-BD*2,BD,400]);



//translate([140,60,100]) cube([300,100,100]);


//2x4
2x4(W,0,0,0,0,90,250-BD*2);
2x4(W,D,D,0,-90,90,400-D-10);
2x4(W,250-BD*2,D,0,-90,90,400-D-10);

2x4(900-200-BD,0,0,0,0,90,250-BD*2);
2x4(900-200-W-BD,0,0,0,0,90,250-BD*2);
2x4(900-200-W-BD,D,D,0,-90,90,400-D-10);
2x4(900-200-W-BD,250-BD*2,D,0,-90,90,400-D-10);

2x4(W+100,0,0,0,0,90,250-BD*2);
2x4(W+200,0,0,0,0,90,250-BD*2);
2x4(W+300,0,0,0,0,90,250-BD*2);
2x4(W+400,0,0,0,0,90,250-BD*2);


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
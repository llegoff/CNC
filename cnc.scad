$fn = 50;
ecl = 0; // vue eclatée ecl=1
cnc_P = 900;
cnc_L = 500;
cnc_H = 300;
X_Pos =0;
Y_Pos =0;
Z_Pos =0;

include <profilesmotedis.scad>;
include <cpl10mm.scad>;
include <piecesmeca.scad>;

// cadre
translate(v=[-cnc_L/2-20-ecl*50,0,0])rotate (a=[-90,-90,0])
 20x60(cnc_P+40);
translate(v=[cnc_L/2+ecl*50,0,0])rotate (a=[-90,-90,0])
 20x60(cnc_P+40);
translate(v=[0,-cnc_P/2-20-ecl*50,0])rotate (a=[0,-90,0]) 20x20(cnc_L);
translate(v=[0,-cnc_P/2-20-ecl*50,40])rotate (a=[0,-90,0]) 20x20(cnc_L);
translate(v=[0,cnc_P/2+ecl*50,0])rotate (a=[0,-90,0]) 20x20(cnc_L);
translate(v=[0,cnc_P/2+ecl*50,40])rotate (a=[0,-90,0]) 20x20(cnc_L);
//cpl
translate (v=[-cnc_L/2-20-ecl*100,-cnc_P/2-20-ecl*100,0])Coin(ecl);
translate (v=[cnc_L/2+20+ecl*100,-cnc_P/2-30-ecl*100,0])
  rotate (a=[0,0,180]) Coin(ecl);
translate (v=[-cnc_L/2-20-ecl*100,cnc_P/2+30+ecl*100,0])Coin(ecl);
translate (v=[cnc_L/2+20+ecl*100,cnc_P/2+20+ecl*100,0])
  rotate (a=[0,0,180]) Coin(ecl);
translate (v=[-cnc_L/2-20-ecl*100,140,0]) EquereB(ecl);
translate (v=[cnc_L/2+30+ecl*100,140,0]) EquereB(ecl);


//portique
translate(v=[-cnc_L/2-ecl*50,40,cnc_H/2+60+ecl*50])rotate (a=[0,0,90]) 20x40(cnc_H);
translate(v=[-cnc_L/2-ecl*50,100,cnc_H/2+60+ecl*50])rotate (a=[0,0,90]) 20x40(cnc_H);
translate(v=[cnc_L/2+20+ecl*50,40,cnc_H/2+60+ecl*50])rotate (a=[0,0,90]) 20x40(cnc_H);
translate(v=[cnc_L/2+20+ecl*50,100,cnc_H/2+60+ecl*50])rotate (a=[0,0,90]) 20x40(cnc_H);
translate(v=[0,120,cnc_H+ecl*50])rotate (a=[0,-90,0]) 20x60(cnc_L);
translate(v=[0,60,cnc_H-60+ecl*50])rotate (a=[-90,0,90]) 20x60(cnc_L);
//cpl
translate (v=[-cnc_L/2-20-ecl*100,40,60+cnc_H+ecl*100]) EquereH(ecl);
translate (v=[cnc_L/2+20+ecl*100,40,70+cnc_H+ecl*100]) rotate (a=[0,180,]) EquereH(ecl);

//axe x
translate([-cnc_L/2+120,cnc_P/2+20,30])rotate([90,0,0]) axe16(cnc_P+40);
translate([cnc_L/2-120,cnc_P/2+20,30])rotate([90,0,0]) axe16(cnc_P+40);
//axe y
translate([-cnc_L/2-20,90,cnc_H+30])rotate([0,90,0]) axe16(cnc_L+40);
translate([-cnc_L/2-20,90,cnc_H-30])rotate([0,90,0]) axe16(cnc_L+40);
//axe z
translate([-30+Y_Pos,30,220]) axe10(cnc_H-50);
translate([30+Y_Pos,30,220]) axe10(cnc_H-50);

//potence kress
use <potencekress.scad>;
translate (v=[0+Y_Pos,0-ecl*50,cnc_H+Z_Pos]) PotenceKress();  




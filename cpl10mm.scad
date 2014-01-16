module Coin(e) {
 color("BurlyWood")
  rotate (a=[90,0,0]) linear_extrude (height = 10, center=false) 
  import (file = "cpl10mm.dxf", layer = "coin", convexity =10);
}
//Coin (0);

module EquereB (e) {
 color("BurlyWood")
  translate (v =[0,100,0]) rotate (a=[90,0,-90])
  linear_extrude (height = 10, center=false, convexity=10) 
  import (file = "cpl10mm.dxf", layer = "equere");
}
//Equere(0);

module EquereH (e) {
 color("BurlyWood")
  translate (v =[0,-100,0])
  linear_extrude (height = 10, center=false, convexity=10) 
  import (file = "cpl10mm.dxf", layer = "equereH");
}
//EquereH(0);
$fn=25;

module lcd12864 () {
  color("Green") cube([93,70,1.6]);
  color("Black") difference () {
    translate ([7.35,9.5,1.6])  
      cube([78.3,51,9.4]);
    translate ([10.5,15,1.6])
      cube([72,40,10]);
  }
  color ("YellowGreen") translate ([10.5,15,1.6])  
    cube([72,40,8]);
}

module led(){
  color ("red")  union () {
    cylinder ( h=2 , r=3.1);
    translate ([0,0,2]) cylinder ( h=6 , r=2.6);
    translate ([0,0,8]) sphere (r=2.6);
  }
  color ("grey") union () {
    translate ([0,0.9,0]) cube ([10,0.9,0.9]);
    translate ([0,-1.6,0]) cube ([10,0.9,0.9]);
  }
}

module encodeur() {
  color ("lightgrey") union () {
    translate ([-6.2,-6.6,-7])cube([12.4,13.2,7]);
    cylinder(h=7, r=3.5);
    translate ([6.2,-1,-10.5])cube([0.5,2,4]);
    translate ([-6.7,-1,-10.5])cube([0.5,2,4]);
    translate ([0,6.6,-10.5])cube([1,0.5,4]);
    translate ([-2.5,6.6,-10.5])cube([1,0.5,4]);
    translate ([2.5,6.6,-10.5])cube([1,0.5,4]);
    translate ([-2.5,-6.85,-10.5])cube([1,0.5,4]);
    translate ([2.5,-6.85,-10.5])cube([1,0.5,4]);
  }
  color ("grey")  cylinder(h=20, r=3);
  color ("black") translate ([-3,19.5,-7]) cube([6,6,3.2]);
  color ("black") translate ([0,22.5,-3.8]) cylinder(h=1.5, r=1.7);
  color ("white") translate ([0,0,11])import ("smoothiebox_knob.stl");
  color ("yellowgreen") translate([-15,-12,-8.6]) cube([30,45,1.6]);
}

module tb6560_4axes(){
  color("blue") cube ([170,140,1.6]);
  color("lightgrey") translate([70,0,1.6]) cube([40,140,20]);
  color("black") translate([70,50,21.6]) cube([40,40,10]);
  color("black") translate([-5,10,1.6]) cube([20,120,15]);
  color("green") translate([165,10,1.6]) cube([20,120,15]);
  color("black") translate([55,28,1.6]) cylinder (h=38, r=10);
  color("black") translate([55,56,1.6]) cylinder (h=38, r=10);
  color("black") translate([55,84,1.6]) cylinder (h=38, r=10);
  color("black") translate([55,112,1.6]) cylinder (h=38, r=10);
}

// *************** encodeur****************************
translate ([245,140,0]) encodeur();

// *************** bouton *****************************
color("white")  
  union() {
    linear_extrude(height = 12, center = false, convexity = 10)
      import(file = "smoothiebox.dxf", layer = "bouton1");
    translate([0,0,-1.5]) 
      linear_extrude(height = 1.5, center = false, convexity = 10)
        import(file = "smoothiebox.dxf", layer = "bouton2");
  }
  translate ([244.8,162.5,-1.5]) led();

// *************** Pilote 4 axes***********************
translate([250,165,-87]) rotate([0,0,180])  tb6560_4axes();
// *************** LCD ********************************
translate ([130,105,-2]) lcd12864();

// *************** Alim *******************************
color("LightGrey") translate ([10,15,-40])  
  cube([100,160,40]);

// *************** Smoothieboard***********************
color("Grey") translate ([134,16,-10]) rotate ([-90,0,0]) 
  import("Smoothieboard_X5.STL");

// *************** Face *******************************
color ("BurlyWood") difference () {
  linear_extrude(height = 10, center = false, convexity = 10)
    import(file = "smoothiebox.dxf", layer = "face1");
  translate ([0,0,5]) 
    linear_extrude(height = 6, center = false, convexity = 10)
      import(file = "smoothiebox.dxf", layer = "face2");
  translate ([0,0,-0.5])
    linear_extrude(height = 11, center = false, convexity = 10)
      import(file = "smoothiebox.dxf", layer = "face3");
}

// *************** Fond ********************************
color ("BurlyWood") translate ([0,340,-100])   linear_extrude(height = 10, center = false, convexity = 10)
    import_dxf(file = "smoothiebox.dxf", layer = "fond");

// *************** haut ********************************
color("Khaki")
  translate ([0,180,210]) rotate ([-90,0,0])
    difference () {
      linear_extrude(height = 10, center = false, convexity = 10)
        import(file = "smoothiebox.dxf", layer = "haut1");
      translate ([0,0,-0.5]) 
        linear_extrude(height = 11, center = false, convexity = 10)
          import(file = "smoothiebox.dxf", layer = "haut2");
   }

// *************** bas *********************************
color("Khaki")
translate ([0,10,20]) rotate ([90,0,0])
linear_extrude(height = 10, center = false, convexity = 10)
                import(file = "smoothiebox.dxf", layer = "bas");

// *************** coté droit ***************************
color("Goldenrod")
  translate ([270,0,310]) rotate ([0,90,0])
    difference () {
      linear_extrude(height = 10, center = false, convexity = 10)
        import(file = "smoothiebox.dxf", layer = "droite1");
      translate ([0,0,5]) 
        linear_extrude(height = 5.5, center = false, convexity=10)
          import(file = "smoothiebox.dxf", layer = "droite2");
      translate ([0,0,-0.5])
        linear_extrude(height = 11, center = false, convexity = 10)
          import(file = "smoothiebox.dxf", layer = "droite3");
    }

// *************** coté gauche ***************************
color("Goldenrod")
  translate ([10,0,30]) rotate ([0,-90,0])
    difference () {
      linear_extrude(height = 10, center = false, convexity = 10)
        import(file = "smoothiebox.dxf", layer = "gauche1");
      translate ([0,0,5]) 
        linear_extrude(height = 5.5, center = false, convexity = 10)
          import(file = "smoothiebox.dxf", layer = "gauche2");
      translate ([0,0,-0.5])
        linear_extrude(height = 11, center = false, convexity = 10)
          import(file = "smoothiebox.dxf", layer = "gauche3");
    }

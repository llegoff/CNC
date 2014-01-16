module 20x20(longueur) {
 color ("lightgrey")
 linear_extrude(height = longueur, center = true, convexity = 10) 
 import(file = "profil20x20.dxf");
}

module 20x40(longueur) {
 color ("lightgrey")
 linear_extrude(height = longueur, center = true, convexity = 10) 
 import(file = "profil20x40.dxf");
}

module 20x60(longueur) {
 color ("lightgrey")
 linear_extrude(height = longueur, center = true, convexity = 10) 
 import(file = "profil20x60.dxf");
}

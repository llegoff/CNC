module PotenceKress () {
 color("Khaki"){
 translate(v=[0,-5,0]) rotate (a=[90,0,0])
   linear_extrude(height = 10, center = true, convexity = 10)
   import(file = "potencekress.dxf",layer="Fond",origin = [70,80]);
 translate(v=[-55,-40,0]) rotate (a=[90,0,-90]) 
   linear_extrude(height = 10, center = true, convexity = 10)
   import(file = "potencekress.dxf",layer="Droite",origin = [190,80]);
 translate(v=[55,-40,0]) rotate (a=[90,0,-90]) 
   linear_extrude(height = 10, center = true)
   import(file = "potencekress.dxf",layer="Gauche",origin = [280,80]);
 translate(v=[0,-30,75]) rotate (a=[0,0,90]) 
   linear_extrude(height = 10, center = true, convexity = 10)
   import(file = "potencekress.dxf",layer="Haut1",origin = [360,80]);
 translate(v=[0,-60,65]) rotate (a=[180,0,0])
   linear_extrude(height = 10, center = true, convexity = 10)
   import(file = "potencekress.dxf",layer="Haut2",origin = [310,200]);
 translate(v=[0,-40,-65]) rotate (a=[0,0,0]) 
   linear_extrude(height = 10, center = true, convexity = 0)
   import(file = "potencekress.dxf",layer="Bas1",origin = [190,210]);
 translate(v=[0,-40,-55]) rotate (a=[0,180,0]) 
   linear_extrude(height = 10, center = true, convexity = 400)
   import(file = "potencekress.dxf",layer="Bas2",origin = [60,210]);
 }
}

//PotenceKress();
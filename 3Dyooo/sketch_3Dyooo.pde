import java.awt.Robot;

import java.util.ArrayList;

Robot rbt;
boolean skipFrame;

boolean wkey, akey, skey, dkey, downkey, upkey, leftkey, rightkey;
float eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ;
float leftRightHeadAngle, upDownHeadAngle;
float rotY, rotX;
PImage diamond, cat;
PImage topDB, sideDB, bottomDB;

color bg = #4281C1;

ArrayList<Boolean> collisions = new ArrayList();
boolean collision;
Block block;
Block block1;
Block block2;

color white = #FFFFFF;

PImage map;
int gridSize, size;
PShape car;
PShape flowerA, flowerC;


ArrayList<GameObject> objects = new ArrayList();
ArrayList<GameObject> flowers = new ArrayList();

//canvases?
PGraphics world;
PGraphics HUD;

//grain settings
float grainHue, grainSat, grainBri, grainOpa,grainX, grainY, grainSize, grainR = 0;

PImage grain;

void setup() {
  //canvases // Must match world renderer
world = createGraphics(width, height, P3D);
HUD = createGraphics(width, height, P2D);
fullScreen(P2D); 
//world.tint(#F2B96E, 100);
  
  //fullScreen(P3D);
  background(#000000);
  stroke(#FFFFFF);
  wkey = akey = skey = dkey = downkey = rightkey = leftkey = false;

  eyeX = width/2;
  eyeY = height/2;
  eyeZ = 0;
  focusX = width/2;
  focusY = height/2;
  focusZ = 10;
  tiltX = 0;
  tiltY = 1;
  tiltZ = 0;

  rotY = radians(0);
  rotX = radians(0);

  leftRightHeadAngle = radians(270 );
  upDownHeadAngle = 0;

  try {
    rbt = new Robot();
  }
  catch (Exception e) {
    e.printStackTrace();
  }

  skipFrame = false;

  diamond = loadImage("Diamond.png");
  cat = loadImage("cat.jpg");
  topDB = loadImage("Grass_Block_Top_C.png");
  sideDB = loadImage("Grass_Block_Side.png");
  bottomDB = loadImage("Dirt_Bottom.png");
  textureMode(NORMAL);
  block = new Block(topDB, sideDB, bottomDB);
  block1 = new Block();
  block2 = new Block(topDB, sideDB, sideDB, sideDB, sideDB, bottomDB);

  map = loadImage("Untitled1.png");
  
  grain = loadImage("grain.png");
  grain.resize(int(width*1.5), int(height*1.5));
  
  gridSize = 100;
  size = 5000;

  drawMap();

  collision = false;
  
  car = loadShape("Car.obj");
  car.rotate(90);
  
  flowerA = world.loadShape("flowerA.obj");
  flowerA.rotateX(PI/2);
  flowerA.scale(1.05);
  flowerA.translate(0, 0.5, 0);
  
  flowerC = world.loadShape("flowerC.obj");
  flowerC.rotateX(PI/2);
  flowerC.scale(1.05);
  flowerC.translate(0, 0.5, 0);
  //objects.add(new Models(0, 0, 0, random(0, 2*PI), random(0.7, 1.1), flower));
  //objects.add(new Models(1, 0, 0, random(0, 2*PI), random(0.7, 1.1), flower));
  //objects.add(new Models(0, 0, 2, random(0, 2*PI), random(0.7, 1.1), flower));
}


void draw() {
  world.colorMode(HSB, 360, 100, 100);
  world.beginDraw();
  world.background(bg);
  world.textureMode(NORMAL);
  noCursor();
  
  //lights!
  world.pointLight(33, 34, 86, eyeX, eyeY, eyeZ);
  world.ambientLight(30, 80, 90);
  
  
  world.camera(eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ);
  drawFloor();
  drawFocalPoint();
  controlCamera();

  for (int i = 0; i < flowers.size(); i++) {
    flowers.get(i).show();
    flowers.get(i).act();
    if (!flowers.get(i).alive) {
      flowers.remove(i);
      i--;
      //println("SALKJ");
    }
  }
  println(flowers.size());

  world.pushMatrix();
  world.translate(+50, height - 50, +50);
  world.scale(gridSize);
  //shape(flower, 0, 0);
  //shape(model, 0, 0);
  world.noStroke();

  //drawdrawMap();


  world.popMatrix();
  //println(eyeX + "" +eyeY + "" + eyeZ);
  world.endDraw();
  imageMode(CENTER);
  image(world, width/2, height/2);
  //HUD.beginDraw();
  grain();
  //HUD.endDraw();
  //restof HUD
  

  //cube(width/2, height/2, 0, #000000, 200);
  //cube(0, 0, 0, #FF0000, 100);
  //ball(width/2, height/2, 0, #000000, 200);
}

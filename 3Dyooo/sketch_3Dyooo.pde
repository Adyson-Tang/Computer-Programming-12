import java.awt.Robot;

import java.util.ArrayList;

Robot rbt;
boolean skipFrame;

boolean pickedup;
boolean wkey, akey, skey, dkey, downkey, upkey, fkey, leftkey, rightkey, spacekey;
float eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ;
float leftRightHeadAngle, upDownHeadAngle;
float rotY, rotX;
PImage diamond, cat;
PImage topDB, sideDB, bottomDB;

ArrayList<Boolean> collisions = new ArrayList();
boolean collision;
Block block;
Block block1;
Block block2;

color bg = #4281C1;
color white = #FFFFFF;
color rainc = #CBE5FF;

PImage map;
int hold = 20;
int gridSize, size;
PShape flowerA, flowerC, stick, skySphere;

Branch held = new Branch();
ArrayList<GameObject> objects = new ArrayList();
ArrayList<GameObject> rain1 = new ArrayList();
ArrayList<GameObject> splashes = new ArrayList();
ArrayList<GameObject> flowers = new ArrayList();
ArrayList<GameObject> throwable = new ArrayList();
ArrayList<GameObject> branches = new ArrayList();

//canvases?
PGraphics world;
PGraphics HUD;


//grain settings
float grainHue, grainSat, grainBri, grainOpa, grainX, grainY, grainSize, grainR = 0;

PImage grain, grass, sky;

float velocity = -20;
float gravity = 1.1;
boolean clicked = false;

int numBranches = 50;
int numRain = 1000;

Block test;

//fence
int numPosts = 100;
float postHeight = 500;
float postWidth = 10;

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

  eyeX = 0;
  eyeY = height/2 - 30;
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
  grass = loadImage("grass.jpg");
  sky = loadImage("sky.jpg");
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


  flowerA = world.loadShape("flowerA.obj");
  flowerA.rotateX(PI/2);
  flowerA.scale(1.05);
  flowerA.translate(0, 0.5, 0);

  flowerC = world.loadShape("flowerC.obj");
  flowerC.rotateX(PI/2);
  flowerC.scale(1.05);
  flowerC.translate(0, 0.5, 0);

  //stick = world.loadShape("stick.obj");
  //stick.rotateX(PI/2);
  //stick.scale(2);
  //stick.translate(0, 0.5, 0);
  //rain.add(new Rain(900, 1000, -200));
  //
  //test = new Block(0, 0, 0, grass, grass, grass);
  // objects.add(new Block(grass, grass, grass));
  //objects.add(new Models(900, 1000, -200, random(0, 2*PI), random(1, 2), stick));
  //objects.add(new Branch());
  for (int e = 0; e <= numBranches; e++) {
    branches.add(new Branch(random(-size, size), height, random(-size, size)));
  }
 
  
  for (int e = 0; e <= numRain; e++) {
    rain1.add(new RainDrop());
  }
  skySphere = createSkySphere(size * 2);
}


void draw() {
  world.colorMode(HSB, 360, 100, 100);
  world.beginDraw();
  world.background(bg);
  world.textureMode(NORMAL);
  noCursor();

  //lights!


  world.camera(eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ);

  //drawFocalPoint();
  controlCamera();
  
  world.noLights();
  world.pushMatrix();
  world.translate(eyeX, 0, eyeZ);
   world.shape(skySphere);
   world.popMatrix();
  // world.lights();
     world.pointLight(33, 34, 86, eyeX, eyeY, eyeZ);
  world.ambientLight(30, 80, 90);
  
    world.pushMatrix();
  world.translate(0, 0, 0);
  drawFloor();
  world.popMatrix();
  // pushMatrix();
  // scale(1000);

  // test.act();
  //test.show();
  // popMatrix();

  for (int i = 0; i < flowers.size(); i++) {
    flowers.get(i).show();
    flowers.get(i).act();
    if (!flowers.get(i).alive) {
      flowers.remove(i);
      i--;
      //println("SALKJ");
    }
  }
  //println(branches.size());
  for (int i = 0; i < branches.size(); i++) {
    branches.get(i).show();
    branches.get(i).act();
    if (!branches.get(i).alive) {
      branches.remove(i);
      i--;
      //println("SALKJ");
    }
  }

  world.pushMatrix();
  general();
  for (int i = 0; i < throwable.size(); i++) {
    throwable.get(i).show();
    throwable.get(i).act();
    if (!throwable.get(i).alive) {
      throwable.remove(i);
      i--;
      //println("SALKJ");
    }
  }
  world.popMatrix();
  
  world.pushMatrix();
  world.translate(0, height, 0);
  drawFence();
  world.popMatrix();
  //for (int i = 0; i < rain.size(); i++) {
  //  rain.get(i).show();
  //  rain.get(i).act();
  //}
  
  for (int i = 0; i < rain1.size(); i++) {
    rain1.get(i).show();
    rain1.get(i).act();
  }
  
   for (int i = 0; i < splashes.size(); i++) {
    splashes.get(i).show();
    splashes.get(i).act();
  }
  //testnig prints
  //println(flowers.size());
  //println(objects.size());
  //objects.get(0).show();


  world.pushMatrix();
  world.translate(0, height - 50, 0);
  world.scale(gridSize);
  world.strokeWeight(0);
  //test.show();
  //shape(flower, 0, 0);
  //shape(model, 0, 0);
  world.noStroke();

  drawdrawMap();


  world.popMatrix();
  //println(eyeX + "" +eyeY + "" + eyeZ);
  world.endDraw();
  imageMode(CENTER);
  image(world, width/2, height/2);
  //HUD.beginDraw();
  generateGrain();
  tint(255, int(random(100, 180))); // random flicker
  image(HUD, width/2, height/2);
  noTint();
  grain();
  regenGrain();
  //HUD.endDraw();
  //restof HUD


  //cube(width/2, height/2, 0, #000000, 200);
  //cube(0, 0, 0, #FF0000, 100);
  //ball(width/2, height/2, 0, #000000, 200);
}

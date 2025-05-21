import java.awt.Robot;

Robot rbt;
boolean skipFrame;

boolean wkey, akey, skey, dkey;
float eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ;
float leftRightHeadAngle, upDownHeadAngle;
float rotY, rotX;
PImage diamond, cat;
PImage topDB, sideDB, bottomDB;
Block block;
Block block1;
Block block2;

void setup() {
  fullScreen(P3D);
  background(#000000);
  stroke(#FFFFFF);
  wkey = akey = skey = dkey = false;

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
}


void draw() {
  background(0);
  noCursor();
  camera(eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ);
  drawFloor();
  drawFocalPoint();
  controlCamera();
  
  pushMatrix();
  translate(width/2, height/2, 0);
  scale(100);
  //rotateX(rotX);
  //rotateY(rotY);
  noStroke();
  block.drawBlock();


  pushMatrix();
  translate(0, 0, 1);
  block1.drawBlock();
  popMatrix();


  pushMatrix();
  translate(0, 0, -1);
  block2.drawBlock();
  popMatrix();
  popMatrix();



  //cube(width/2, height/2, 0, #000000, 200);
  //cube(0, 0, 0, #FF0000, 100);
  //ball(width/2, height/2, 0, #000000, 200);
}

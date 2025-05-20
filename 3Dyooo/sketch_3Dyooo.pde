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
  size (800, 600, P3D);
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
  camera(eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ);
  drawFloor();
  drawFocalPoint();
  controlCamera();
  background(0);
  //pushMatrix();
  translate(width/2, height/2, 0);
  scale(100);
  //rotateX(rotX);
  //rotateY(rotY);
  noStroke();
  block.drawBlock();


  //pushMatrix();
  //translate(0, 0, 1);
  //block1.drawBlock();
  //popMatrix();


  //pushMatrix();
  //translate(0, 0, -1);
  //block2.drawBlock();
  //popMatrix();


  //beginShape(QUADS);
  //texture(topDB);

  ////top
  //vertex(0, 0, 0, 0, 0);
  //vertex(1, 0, 0, 1, 0);
  //vertex(1, 0, 1, 1, 1);
  //vertex(0, 0, 1, 0, 1);

  ////bottom

  ////side
  //endShape();

  //beginShape(QUADS);
  //texture(topDB);
  //vertex(0, 1, 0, 0, 0);
  //vertex(1, 1, 0, 1, 0);
  //vertex(1, 1, 1, 1, 1);
  //vertex(0, 1, 1, 0, 1);

  //endShape();

  //beginShape(QUADS);
  //texture(topDB);
  //vertex(1, 0, 1, 1, 1);
  //vertex(0, 0, 1, 0, 1);
  //vertex(0, 1, 1, 0, 1);
  //vertex(1, 1, 1, 1, 1);



  //endShape();


  ////pushMatrix();
  ////rotateX(radians(270));
  ////translate(0, -1);
  //////rotateY(radians(180));
  ////beginShape(QUADS);

  //////top
  ////vertex(0, 0, 0, 0, 0);
  ////vertex(1, 0, 0, 1, 0);
  ////vertex(1, 0, 1, 1, 1);
  ////vertex(0, 0, 1, 0, 1);

  ////texture(cat);
  //////bottom
  ////vertex(0, 1, 0, 0, 0);
  ////vertex(1, 1, 0, 1, 0);
  ////vertex(1, 1, 1, 1, 1);
  ////vertex(0, 1, 1, 0, 1);

  //////side
  ////endShape();
  ////popMatrix();

  //popMatrix();











  //background(#FFFFFF);






  //cube(width/2, height/2, 0, #000000, 200);
  //cube(0, 0, 0, #FF0000, 100);
  //ball(width/2, height/2, 0, #000000, 200);
}

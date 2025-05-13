boolean wkey, akey, skey, dkey;
float eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ;
float leftRightHeadAngle, upDownHeadAngle;

void setup() {
  size (800, 600, P3D);
  background(#000000);
  stroke(#FFFFFF);
  eyeX = width/2;
  eyeY = height/2;
  eyeZ = 0;
  focusX = width/2;
  focusY = height/2;
  focusZ = 10;
  tiltX = 0;
  tiltY = 1;
  tiltZ = 1;
  
  leftRightHeadAngle = radians(270);
  upDownHeadAngle = 0;
}


void draw() {
  camera(eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ);
  drawFloor();
  drawFocalPoint();
  controlCamera();
}

void drawFocalPoint() {
  pushMatrix();
  translate(focusX, focusY, focusZ);
  sphere(10);
  popMatrix();
}

void drawFloor() {
  background(#000000);
  stroke(#FFFFFF);
  for (int x = -2000; x <= 2000; x = x + 100) {
    line(x, height, -2000, x, height, 2000);
    line(-2000, height, x, 2000, height, x);
  }
}

void controlCamera() {
  if (wkey) eyeZ = eyeZ - 10;
  if (skey) eyeZ = eyeZ + 10;
  if (akey) eyeX = eyeX - 10;
  if (dkey) eyeX = eyeX + 10;
  //jump would change eyeY
  
  leftRightHeadAngle = leftRightHeadAngle + (mouseX - pmouseX)* 0.01;
  
  focusZ = eyeZ + sin(leftRightHeadAngle)*300;
  focusX = eyeX + cos(leftRightHeadAngle)*300;
  focusY = eyeY;
  
  
  
}

void keyPressed() {
  if (key == 'W' || key == 'w') wkey = true;
  if (key == 'A' || key == 'a') akey = true;
  if (key == 'D' || key == 'd') dkey = true;
  if (key == 'S' || key == 's') skey = true;
}

void keyReleased() {
  if (key == 'W' || key == 'w') wkey = false;
  if (key == 'A' || key == 'a') akey = false;
  if (key == 'D' || key == 'd') dkey = false;
  if (key == 'S' || key == 's') skey = false;
}

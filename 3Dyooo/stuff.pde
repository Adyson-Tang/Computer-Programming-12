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
  
  leftRightHeadAngle += (mouseX - pmouseX)* 0.01;
  //
  upDownHeadAngle += (mouseY - pmouseY) * 0.01;
  
  focusZ = eyeZ -300;
  focusX = eyeX;
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

void mouseDragged() {
 rotX = rotX + (pmouseY - mouseY) * 0.01;
 rotY = rotY + (pmouseX - mouseX) * 0.01;
}

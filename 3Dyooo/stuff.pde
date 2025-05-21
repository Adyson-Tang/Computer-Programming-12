void drawFocalPoint() {
  pushMatrix();
  translate(focusX, focusY, focusZ - sin(leftRightHeadAngle)*10);
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
  if (wkey) {
    eyeX = eyeX + cos(leftRightHeadAngle)*10;
    eyeZ = eyeZ + sin(leftRightHeadAngle)*10;
  }
  if (skey) {
    eyeX = eyeX - cos(leftRightHeadAngle)*10;
    eyeZ = eyeZ - sin(leftRightHeadAngle)*10;
  }
  if (akey) {
    eyeX = eyeX - cos(leftRightHeadAngle + PI/2)*10;
    eyeZ = eyeZ - sin(leftRightHeadAngle + PI/2)*10;
  }
  if (dkey) {
    eyeX = eyeX - cos(leftRightHeadAngle - PI/2)*10;
    eyeZ = eyeZ - sin(leftRightHeadAngle - PI/2)*10;
  }
  
  if (!skipFrame) {
     leftRightHeadAngle = leftRightHeadAngle + (mouseX - pmouseX) * 0.01;
     upDownHeadAngle = upDownHeadAngle + (mouseY - pmouseY)* 0.01;
  }
  //jump would change eyeY

  leftRightHeadAngle += (mouseX - pmouseX)* 0.01;
  //
  upDownHeadAngle += (mouseY - pmouseY) * 0.01;
  
  if (upDownHeadAngle > PI/2.5) upDownHeadAngle = PI/2.5;
  if (upDownHeadAngle < -PI/2.5) upDownHeadAngle = -PI/2.5;


  focusX = eyeX + cos(leftRightHeadAngle)*250;
  focusY = eyeY + tan(upDownHeadAngle)*250;
  focusZ = eyeZ + sin(leftRightHeadAngle)*250;
  
  //if (mouseX > width - 2) rbt.mouseMove(2, mouseY);
  //else if (mouseX < 2) rbt.mouseMove(width-2, mouseY);
  
  if (mouseX < 2) {
   rbt.mouseMove(width-3, mouseY);
   skipFrame = true;
  } else if (mouseX > width-2) {
   rbt.mouseMove(3, mouseY);
   skipFrame = true;
  } else {
   skipFrame = false; 
  }
  
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

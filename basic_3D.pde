void drawFocalPoint() {
  world.pushMatrix();
  world.translate(focusX, focusY, focusZ - sin(leftRightHeadAngle)*10);
  world.sphere(10);
  world.popMatrix();
}

void drawFloor() {
 // world.background(bg);
  
  world.noStroke();
  world.beginShape(QUAD);
  world.texture(grass);
  world.vertex(-size, height, -size, 0, 0);
  world.vertex(size, height, -size, 1, 0);
  world.vertex(size, height, size, 1, 1);
  world.vertex(-size, height, size, 0, 1);
  world.endShape();
  
  world.stroke(#FFFFFF);
  world.strokeWeight(1);
  //image(map, 0, 0, 4000, 4000);
  //box(200);
  //for (int x = -size; x <= size; x = x + 100) {
  //  world.line(x, height, -size, x, height, size);
  //  world.line(-size, height, x, size, height, x);
  //}
}

void controlCamera() {
  if (wkey && canMoveForward()) {
    eyeX = eyeX + cos(leftRightHeadAngle)*20;
    eyeZ = eyeZ + sin(leftRightHeadAngle)*20;
    //eyeY = eyeY + sin(upDownHeadAngle) * 15;
    //  objects.add(new Models(0, 0, 0, random(0, 2*PI), random(0.7, 1.1), flower));
    //objects.add(new Models(1, 0, 0, random(0, 2*PI), random(0.7, 1.1), flower));
    //objects.add(new Models(0, 0, 2, random(0, 2*PI), random(0.7, 1.1), flower));
    //to reduce lag
    flowers.add(new Flower(eyeX+ random(-50, 150), height, eyeZ + random(-50, 150), random(0, 2*PI), random(1.5, 2), flowerA, flowerC));
    //regenGrain();
  }
  if (skey && canMoveBack()) {
    eyeX = eyeX - cos(leftRightHeadAngle)*15;
    eyeZ = eyeZ - sin(leftRightHeadAngle)*15;
    flowers.add(new Flower(eyeX+ random(-50, 150), height, eyeZ + random(-50, 150), random(0, 2*PI), random(1.5, 2), flowerA, flowerC));
    //regenGrain();
  }
  if (akey && canMoveLeft()) {
    eyeX = eyeX - cos(leftRightHeadAngle + PI/2)*10;
    eyeZ = eyeZ - sin(leftRightHeadAngle + PI/2)*10;
    flowers.add(new Flower(eyeX+ random(-50, 150), height, eyeZ + random(-50, 150), random(0, 2*PI), random(1.5, 2), flowerA, flowerC));
    //regenGrain();
  }
  if (dkey && canMoveRight()) {
    eyeX = eyeX - cos(leftRightHeadAngle - PI/2)*10;
    eyeZ = eyeZ - sin(leftRightHeadAngle - PI/2)*10;
    flowers.add(new Flower(eyeX+ random(-50, 150), height, eyeZ + random(-50, 150), random(0, 2*PI), random(1.5, 2), flowerA, flowerC));
    //regenGrain();
  }

  if (downkey) {
    eyeY = eyeY + 10;
  }

  if (upkey) {
    eyeY = eyeY - 10;
  }


  if (!skipFrame) {
    leftRightHeadAngle = leftRightHeadAngle + (mouseX - pmouseX) * 0.01;
    upDownHeadAngle = upDownHeadAngle + (mouseY - pmouseY)* 0.01;
  }
  if (leftkey) {
    leftRightHeadAngle = leftRightHeadAngle - 2 * 0.01;
  }
  if (rightkey) {
    leftRightHeadAngle = leftRightHeadAngle + 2 * 0.01;
  }
  //jump would change eyeY
  jump();
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
  if (mouseX < 2 || mouseX > width-1) {
    regenGrain();
  }

  //if (mouseX > width/2 + 2) {
  //  regenGrain();
  // rbt.mouseMove(width/2, mouseY);
  // skipFrame = true;
  //} else if (mouseX < width/2 -2) {
  //  regenGrain();
  // rbt.mouseMove(width/2, mouseY);
  // skipFrame = true;
  //} else {
  // skipFrame = false;
  //}
  //println(mouseX + " " + mouseY);
}

PShape createSkySphere(float radius) {
  PShape s = world.createShape(SPHERE, radius);
  s.setTexture(sky);
  s.setFill(#D3E6FF);
  s.setStroke(false);
  s.scale(-1); // Flip normals inward so you see it from inside
  return s;
}

class Branch extends GameObject {
  float bend1, bend2, bend3;
  int timer = 100;
  float r, s;
  boolean held;
  color c = #391B14;
  Branch() {
    super(0, height, 0);
    bend1 = random(radians(-15), radians(15));
    bend2 = random(radians(-15), radians(15));
    bend3 = random(radians(-15), radians(15));
    s = random(0.5, 1);
    r = random(PI);
    held = true;
  }

  Branch(float x, float y, float z) {
    super(x, y, z);
    bend1 = random(radians(-15), radians(15));
    bend2 = random(radians(-15), radians(15));
    bend3 = random(radians(-15), radians(15));
    s = random(0.5, 1);
    r = random(0, 2*PI);
    held = false;
  }

  Branch(float x, float y, float z, float vx, float vy, float vz) {
    super(x, y, z, vx, vy, vz);
    bend1 = random(radians(-15), radians(15));
    bend2 = random(radians(-15), radians(15));
    bend3 = random(radians(-15), radians(15));
    s = random(0.5, 1);
    r = random(0, 2*PI);
    held = false;
  }

  void act() {
    location.add(velocity);
    if (velocity.x != 0) {
      velocity.y += pow(1.1, 100 - timer);
      timer--;
      if (location.y >= height) {
        velocity = new PVector(0, 0, 0);
      }
    }
  }

  void show() {
    drawStickBranch();
  }

  void drawStickBranch() {
    world.noStroke();
    world.fill(c);
    world.pushMatrix();
    world.translate(location.x, location.y, location.z);
      world.rotateZ(PI/2);
      world.rotateX(r);
      if (held) {
       world.rotateZ(-PI/4); 
      }
    world.scale(s);
    // First segment
    world.pushMatrix();
    world.rotateZ(bend1); // Slight bend
    cylinder(5, 120);
    world.translate(0, -120, 0);

    // Second segment at angle
    world.rotateZ(bend2);
    cylinder(4, 80);
    world.translate(0, -80, 0);

    //sticky out
    world.rotateY(bend2 + radians(50));
    cylinder(2, 90);
    //world.translate(0, -80, 0);

    // Optional third segment
    world.rotateZ(bend3);
    cylinder(3, 60);
    world.popMatrix();

    world.popMatrix();
  }

  void hold() {
    location = new PVector(eyeX - 20, eyeY + 20, eyeZ -20);
  }

  // Utility to draw a vertical cylinder centered on Y-axis
  void cylinder(float r, float h) {
    int sides = 20;
    float angleStep = TWO_PI / sides;

    // Side
    world.beginShape(QUAD_STRIP);
    for (int i = 0; i <= sides; i++) {
      float theta = i * angleStep;
      float x = cos(theta) * r;
      float z = sin(theta) * r;
      world.vertex(x, 0, z);
      world.vertex(x, -h, z);
    }
    world.endShape();

    // Bottom cap
    world.beginShape(TRIANGLE_FAN);
    world.vertex(0, 0, 0);
    for (int i = 0; i <= sides; i++) {
      float theta = i * angleStep;
      world.vertex(cos(theta) * r, 0, sin(theta) * r);
    }
    world.endShape();

    // Top cap
    world.beginShape(TRIANGLE_FAN);
    world.vertex(0, -h, 0);
    for (int i = 0; i <= sides; i++) {
      float theta = i * angleStep;
      world.vertex(cos(theta) * r, -h, sin(theta) * r);
    }
    world.endShape();
  }
}

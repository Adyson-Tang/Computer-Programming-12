class ball extends GameObject {
  int timer = 100;
  Branch thrown;
  ball() {
    super(eyeX, eyeY, eyeZ, cos(leftRightHeadAngle) * 100, sin(upDownHeadAngle) * 100, sin(leftRightHeadAngle) * 100);
    branches.add(new Branch(location.x, location.y, location.z, velocity.x, velocity.y, velocity.z));
  }
  void act() {
    location.add(velocity);
    velocity.y += pow(1.1, 100 - timer);
    timer--;
    //thrown.act();
    if (timer <= 0) {
     //alive = false; 
    }
    if (location.y >= height) {
     //branches.add(new Branch(location.x, height, location.z));
     //alive = false;
    }
    
  }
  void show() {
    
    //thrown.show();
    //drawBall(location, white, 50);    
  }
  void drawBall(PVector loc, color c, float size) {
    world.pushMatrix();
    world.translate(loc.x, loc.y, loc.z);

    world.noFill();
    world.stroke(c);

    world.sphere(size);
    world.popMatrix();
  }
}

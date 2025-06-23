class Flower extends GameObject {
  int timer = int(random(200, 250));
  int pick = int(random(0,12));
  boolean Multi = false;
  Flower() {
    super(0, 0, 0);
  }

  Flower(float x, float y, float z, PShape s) {
    super(x, y, z, s);
    pick = int(random(0,12));
  }

  Flower(float x, float y, float z, float ry, float scale, PShape model) {
    super(x, y, z, ry, scale, model);
    pick = int(random(0,12));
  }
  
  Flower(float x, float y, float z, float ry, float scale, PShape model, PShape model1) {
    super(x, y, z, ry, scale, model, model1);
    pick = int(random(0,12));
    timer = int(random(90, 120));
    Multi = true;
  }

  void show() {
    if (timer > 0) {
      world.pushMatrix();
      world.translate(location.x, location.y, location.z);
      world.rotateY(ry);
      world.scale(scale);
      if (Multi) {
        if (pick%4 == 0) {
        world.shape(model);
        } else world.shape (model1);
      } else world.shape(model);
      world.popMatrix();
    }
  }

  void act() {
    if (timer <= 50 && scale > 0.05) {
     scale  = scale - 0.09;
    }
    if (timer <= 0 || scale <= 0.05) {
     alive = false; 
    }
    timer--;
  }
}

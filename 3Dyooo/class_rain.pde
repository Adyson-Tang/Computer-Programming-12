class Rain extends GameObject {
  Rain() {
    super(0, 0, 0);
  }
  Rain(float x, float y, float z) {
    super(x, y, z);
  }

  void show() {

    world.pushMatrix();
    world.translate(location.x, location.y, location.z);
    
    world.fill(white);
    world.stroke(white);

    world.sphere(100);
    world.popMatrix();
  }
}

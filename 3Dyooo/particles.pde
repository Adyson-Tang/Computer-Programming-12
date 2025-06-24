class Particle extends GameObject {
  PVector acc = new PVector(0, 0.1, 0); // gravity

  Particle(float x, float y, float z, float dx, float dy, float dz) {
    super(x, y, z, dx, dy, dz);
  }

  void act() {
    velocity.add(acc);
    location.add(velocity);
  }

  void show() {
    world.line(location.x, location.y, location.z, location.x - velocity.x, location.y - velocity.y, location.z - velocity.z);
  }
}

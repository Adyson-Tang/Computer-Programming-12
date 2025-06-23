class RainDrop extends GameObject {
  float x, y, z;
  float len;
  float speed;

  RainDrop() {
    super(random(-size, size), random(-900, height), random(-size, size), 0, random(30, 50), 0);
    len = random(60, 80);
  }

  void reset() {
    location = new PVector(random(-size - 100, size + 100), random(-1200, -900), random(-size, size));
    len = random(60, 80);
    speed = random(50, 60);
  }

  void act() {
    location.y += velocity.y;
    if (location.y >= height) {
      splashes.add(new Splash(location.x, height, location.z));
      reset();
      y = -500;
    }
  }

  void show() {
    world.stroke(rainc); // darker or loighter otherwise cant see
    world.strokeWeight(3);
    world.line(location.x, location.y, location.z, location.x, location.y + len, location.z);
  }
}

class Splash extends GameObject {
  float size = 0;
  float maxSize = 10;
  int lifespan = 50;
  int age = 0;
  ArrayList <Particle> particles = new ArrayList();

  Splash(float x, float y, float z) {
    super(x, y, z);
    alive = true;
    for (float angle = 0; angle < TWO_PI; angle += PI/6) {
      float speed = random(1, 2);
      float dx = cos(angle) * speed;
      float dz = sin(angle) * speed;
      float dy = random(-2, -1); // negative = upward

      particles.add(new Particle(location.x, location.y, location.z, dx, dy, dz));
    }
  }

  void act() {
    for (Particle p : particles) {
      p.act();
    }
    age++;
  }

  void show() {
    world.stroke(rainc, map(age, 0, lifespan, 255, 0));
    world.strokeWeight(2);
    for (Particle p : particles) {
      p.show();
    }
  }
}

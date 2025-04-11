class Asteroid extends GameObject {

  Asteroid() {
    super(random(width), random(height), 1, 1);
    velocity.setMag(random(1, 3));
    velocity.rotate(random(TWO_PI));
    lives = 3;
    diameter = lives*30;
  }

  void show() {
    fill(black);
    stroke(white);
    strokeWeight(3);
    circle(location.x, location.y, diameter);
    if (lives < 3) {
      println("iosfhe");
      for (int i = 3; i > 0; i--) {
        glitcheffect(120, location.x, location.y);
      }
    }
    line(location.x, location.y, location.x + diameter/2, location.y);
  }

  void act() {
    location.add(velocity);
    wrapAround();
    collisionCheck();
  }

  void death() {
  }

  void collisionCheck() {
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y) < diameter/2 + obj.diameter/2) {
          for (int e = 3; e > 0; e--) {
            glitcheffect(120, location.x, location.y);
          }
          lives = 0;
          obj.lives--;
          println("iosfhe");
        }
      }
      i++;
    }
  }  
}

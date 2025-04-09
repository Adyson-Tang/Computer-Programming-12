class Asteroid extends GameObject {
  
  Asteroid() {
    super(random(width), random(height), 0.1, 0.1);
    velocity.setMag(random(1, 3));
    velocity.rotate(random(TWO_PI));
    lives = 3;
    diameter = lives*50;
  }
  
  void show() {
    fill(black);
    stroke(white);
    strokeWeight(3);
    circle(location.x, location.y, d);
    line(location.x, location.y, location.x + lives * 50/2, location.y);
  }
  
  void act() {
    location.add(velocity);
    wrapAround();
    collisionCheck();
  }
  
  void collisionCheck() {
   int i = 0;
   while (i < objects.size()) {
    GameObject obj = objects.get(i); 
    if (obj instanceof Bullet) {
      if (dist(location.x, location.y, obj.location.x, obj.location.y) < d/2 + obj.diameter/2) {
        lives = 0;
        obj.lives--;
      }
    }
    i++;
   }
  }
}

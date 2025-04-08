class Asteroid extends GameObject {
  
  Asteroid() {
    super(random(width), random(height), 0.1, 0.1);
    velocity.setMag(random(1, 3));
    velocity.rotate(random(TWO_PI));
    lives = 3;
  }
  
  void show() {
    fill(black);
    stroke(white);
    strokeWeight(3);
    circle(location.x, location.y, lives*50);
    line(location.x, location.y, location.x + lives * 50/2, location.y);
  }
  
  void act() {
    location.add(velocity);
    wrapAround();
  }
}

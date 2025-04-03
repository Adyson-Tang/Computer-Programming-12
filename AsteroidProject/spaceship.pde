class Spaceship {
  //variables
  PVector location, velocity, direction;
  int lives;

  //constructor
  Spaceship() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    direction = new PVector(0.2, 0);
    lives = 3;
  }

  void show() {
    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    drawShip();
    popMatrix();
  }

  void drawShip() {
    fill(black);
    stroke(white);
    strokeWeight(1);
    triangle(-10, -10, -10, 10, 30, 0);
    circle(0, 0, 5);
  }

  void act() {
    move();
    shoot();
    collisionCheck();
  }

  void move() {
    location.add(velocity);
    if (upkey) {
      velocity.add(direction);
    }
    if (velocity.x > 0 && !upkey) {
      velocity.add(-direction.x, 0);
    } 
    if (velocity.y > 0 && !upkey) {
      velocity.add(0, -direction.y); 
    }
    if (leftkey) direction.rotate(-radians(3));
    if (rightkey) direction.rotate(radians(3));
    
    keepOnScreen();
  }

  void shoot() {
  }

  void collisionCheck() {
  }

  void keepOnScreen() {
    if (location.x > width) location.x = 0;
    
    if (location.x < 0) location.x = width;
    
    if (location.y > height) location.y = 0;
    
    if (location.y < 0) location.y = height;
  }
}

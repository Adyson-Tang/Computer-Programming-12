class Spaceship extends GameObject {
  //variables
  //PVector location, velocity,
  PVector direction;
  int cooldown;

  //constructor
  Spaceship() {
    super(width/2, height/2, 0, 0);

    direction = new PVector(0.2, 0);

    cooldown = 0;
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
    wrapAround();
  }

  void move() {
    location.add(velocity);
    if (upkey) {
      velocity.add(direction);
      //println("why");
    }
    if (leftkey) direction.rotate(-radians(3));
    if (rightkey) direction.rotate(radians(3));

    //keepOnScreen();

    velocity.limit(10);
  }

  void shoot() {
    cooldown--;
    if (spacekey && cooldown <= 0) {
      objects.add(new Bullet());
      cooldown = 20;
    }
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

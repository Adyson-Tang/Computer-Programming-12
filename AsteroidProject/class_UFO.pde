class UFO extends GameObject {
  //variables
  //PVector location, velocity,
  PVector direction;
  int cooldown;

  //constructor
  UFO() {
    super(width/2 - 100, height/2, 0, 0);

    direction = new PVector(0.1, 0);
    //make look at player

    cooldown = 0;

    lives = 5;

    diameter = 30;
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
    circle(0, 0, 20);
    circle(0, 0, 5);
  }

  void act() {
    move();
    shoot();
    collisionCheck();
  }

  void move() {
    //location.add(velocity);
    //println("why");
    velocity.limit(4);
  }

  void shoot() {
    cooldown--;
    if (cooldown <= 0) {
      objects.add(new Bullet(true));
      cooldown = 12;
    }
  }

  void collisionCheck() {
    int i = 0;
    while (i < objects.size()) {
      GameObject objBullets = objects.get(i);
      if (objBullets instanceof Bullet) {
        if (dist(location.x, location.y, objBullets.location.x, objBullets.location.y) < diameter/2 + objBullets.diameter/2 && lives > 0 && !objBullets.enemy) {
          //for (int e = 3; e > 0; e--) {
          //  glitcheffect(120, location.x, location.y);
          //println("aoisfhaih");
          lives--;
          objBullets.lives = 0;
          objBullets.dead = true;
          //println("iosfhe");
        }
      }
      i++;
    }
  }

  void death() {
  }

  void keepOnScreen() {
    if (location.x > width) location.x = 0;

    if (location.x < 0) location.x = width;

    if (location.y > height) location.y = 0;

    if (location.y < 0) location.y = height;
  }
}

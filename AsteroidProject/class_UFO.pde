class UFO extends GameObject {
  //variables
  //PVector location, velocity,
  PVector direction;   ////how to make look at spaceship?????
  int cooldown;

  //constructor
  UFO() {
    super(random(0, width), random(0, height), random(0.1, 2), random(0.1, 2));

    direction = new PVector(player1.location.x - location.x, player1.location.y - location.y);
    //make look at player

    cooldown = 0;
    

    lives = 3;

    diameter = 50;
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
    circle(0, 0, diameter);
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
    //println("why");
    direction = new PVector(player1.location.x - location.x, player1.location.y - location.y);
    //if (direction != new PVector(player1.location.x - location.x, player1.location.y - location.y)) {
    //direction.rotate(atan((player1.location.y - location.y)/(player1.location.x - location.x)));
    //}
    
    
    //fixxxxxxxxxx thisssssss
    velocity.limit(4);
  }

  void shoot() {
    cooldown--;
    if (cooldown <= 0) {
      objects.add(new Bullet(true));
      cooldown = 50;
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
    if (lives == 0) dead = true;
  }
  
   void wrapAround() {
    if (location.x > width + diameter/2) lives = 0;

    if (location.x < 0- diameter/2) lives = 0;

    if (location.y > height + diameter/2) lives = 0;

    if (location.y < 0 - diameter/2) lives = 0;
  }

  void keepOnScreen() {
    if (location.x > width) location.x = 0;

    if (location.x < 0) location.x = width;

    if (location.y > height) location.y = 0;

    if (location.y < 0) location.y = height;
  }
}

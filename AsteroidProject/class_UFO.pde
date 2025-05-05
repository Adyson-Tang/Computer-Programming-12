class UFO extends GameObject {
  //variables
  //PVector location, velocity,
  PVector direction;   ////how to make look at spaceship?????
  int cooldown;
  boolean start = false;
  int spawn = int(random(0, 4));

  //constructor
  UFO() {
    super(random(-100, width + 100), random(-100, height + 100), random(-2, 2), random(-2, 2));

    direction = new PVector(player1.location.x - location.x, player1.location.y - location.y);
    //make look at player
    spawn = int(random(0, 4));
    cooldown = 0;

    //still gotta make it spawn outside the area
    lives = 3;

    diameter = 50;

    //while (location.x > diameter || location.x < width + diameter || location.y < d || location.y > height + d) {
    if (spawn == 0) {
      location.x = random(-100, width + 100);
      location.y = -10;
      //velocity = new PVector (random(-2, 2), random(0.1, 2));
      spawn = -1;
    } else if (spawn == 1) {
      location.x = random(-100, width + 100);
      location.y = width + 10;
      //velocity = new PVector (random(-2, 2), random(-2, -0.1));
      spawn = -1;
    } else if (spawn == 2) {
      location.x = -10;
      location.y = random(-100, height + 100);
      //velocity = new PVector (random(0.1, 2), random(-2, 2));
      spawn = -1;
    } else if (spawn == 3) {
      location.x = width + 10;
      location.y = random(-100, height + 100);
      //velocity = new PVector (random(-2, -0.1), random(-2, 2));
      spawn = -1;
    }
    
    PVector center = new PVector (width/2, height/2);
    velocity = PVector.sub(center, location);
    velocity.normalize();
    velocity.mult(2);
    //}
  }

  void show() {
    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    drawShip();
    popMatrix();
  }

  void drawShip() {
    fill(0, 0);
    stroke(black);
    strokeWeight(1);
    triangle(-10, -10, -10, 10, 30, 0);
    circle(0, 0, diameter);
    circle(0, 0, 5);
  }

  void act() {
    move();
    if (start) {
      shoot();
    }
    collisionCheck();
    ifStart();
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
    if (lives == 0 && start) dead = true;
  }

  void wrapAround() {
    if (start) {
      if (location.x > width + diameter/2) lives = 0;

      if (location.x < 0- diameter/2) lives = 0;

      if (location.y > height + diameter/2) lives = 0;

      if (location.y < 0 - diameter/2) lives = 0;
    }
  }

  void ifStart() {
    if (location.x < width) start = true;

    if (location.x > 0) start = true;

    if (location.y < height) start = true;

    if (location.y > 0) start = true;
  }
}

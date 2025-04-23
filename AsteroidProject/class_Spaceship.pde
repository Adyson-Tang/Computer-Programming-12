class Spaceship extends GameObject {
  //variables
  //PVector location, velocity,
  PVector direction;
  int cooldown;

  //constructor
  Spaceship() {
    super(width/2, height/2, 0, 0);

    direction = new PVector(0.1, 0.0001);

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
      velocity.add(0.4*direction.x, 0.4*direction.y);
      //println("why");
    }
    if (leftkey) direction.rotate(-radians(4));
    if (rightkey) direction.rotate(radians(4));

    //keepOnScreen();

    velocity.limit(4);
  }

  void shoot() {
    cooldown--;
    if (spacekey && cooldown <= 0) {
      objects.add(new Bullet());
      cooldown = 12;
    }
  }

  void collisionCheck() {
    int i = 0;
    while (i < objects.size()) {
      GameObject objAsteroid = objects.get(i);
      if (objAsteroid instanceof Asteroid) {
        if (dist(location.x, location.y, objAsteroid.location.x, objAsteroid.location.y) < diameter/2 + objAsteroid.diameter/2 && lives > 0) {
          //for (int e = 3; e > 0; e--) {
          //  glitcheffect(120, location.x, location.y);

          lives--;
          objAsteroid.lives = 0;
          objAsteroid.dead = true;
          //println("iosfhe");
        }
      }
      i++;
    }
    int e = 0;
     while (e < objects.size()) {
      GameObject objBullets = objects.get(e);
      if (objBullets instanceof Bullet) {
        if (dist(location.x, location.y, objBullets.location.x, objBullets.location.y) < diameter/2 + objBullets.diameter/2 && lives > 0 && objBullets.enemy) {
          //for (int e = 3; e > 0; e--) {
          //  glitcheffect(120, location.x, location.y);
println("AIOSHF");
          lives--;
          objBullets.lives = 0;
          objBullets.dead = true;
          //println("iosfhe");
        }
      }
      e++;
    }
  }
  
  void death() {
   if (lives <= 0) {
     dead = true;
     mode = GAMEOVER;
   }
  }

  void keepOnScreen() {
    if (location.x > width) location.x = 0;

    if (location.x < 0) location.x = width;

    if (location.y > height) location.y = 0;

    if (location.y < 0) location.y = height;
  }
}

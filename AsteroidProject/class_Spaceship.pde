class Spaceship extends GameObject {
  //variables
  //PVector location, velocity,
  PVector direction;
  int cooldown, teleport;
  boolean glitch;

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
    teleportEffect();
    popMatrix();
  }

  void drawShip() {
    fill(black);
    stroke(white);
    strokeWeight(1);
    triangle(-10, -10, -10, 10, 30, 0);
    PVector alocation = new PVector(location.x-(direction.x*500), location.y-(direction.y*500));
    if (glitch) {
      objects.add(new GlitchParticle(alocation));
    }
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
      glitch = true;
      //println("why");
    } else glitch = false;
    if (leftkey) direction.rotate(-radians(4.5));
    if (rightkey) direction.rotate(radians(4.5));

    //keepOnScreen();

    velocity.limit(1);
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

  void teleport() {
    boolean safe = false;
    int maxtries = 100;
    //ArrayList <Boolean> safe = new ArrayList();
    PVector newlocation = new PVector(random(0, width), random(0, height));
    int e = 0;
    while (e < objects.size() || !safe) {
      if (!safe) e = 0;
      GameObject objAsteroids = objects.get(e);
      safe = true;
      if (objAsteroids instanceof Asteroid) {
        while (dist(newlocation.x, newlocation.y, objAsteroids.location.x, objAsteroids.location.y) < diameter*2 + objAsteroids.diameter*2) {
          safe = false;
          newlocation = new PVector(random(0, width), random(0, height));
          //e = 0;
          //safe = true;
          //figure out the safe thing maybe the array will work?
          //maybe add bullets finder thingy
        }
      }
      e++;
      maxtries--;
      if (maxtries <= 0) {
        println("breakesr");
        break;
      }
    }

    if (maxtries > 0) {
      teleport = 200;
      location = newlocation;
    } else {
      fill(#FA2121, 50);
      rect(width/2, height/2, width + 10, height + 10);
      //background(#FA2121);
    }
  }
  
  void teleportEffect() {
    if (teleport > 0) {
      fill(#FA2121);
      circle(0 ,0, 10);
    }
    teleport--;
  }
}

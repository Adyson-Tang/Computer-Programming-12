class Asteroid extends GameObject {
  int glitchlength = 10;

  Asteroid() {
    super(random(width), random(height), 1, 1);
    velocity.setMag(random(0.2, 1.3));
    velocity.rotate(random(TWO_PI));
    lives = 3;
    diameter = lives*30;
    dead = false;
  }

  Asteroid(float x, float y, int lives) {
    super(x, y, 1, 1);
    velocity.setMag(random(0.2, 1.3));
    velocity.rotate(random(TWO_PI));
    this.lives = lives;
    diameter = lives*30;
    dead = false;
  }

  void show() {
    fill(0, 0);
    stroke(black);
    strokeWeight(1);
    circle(location.x, location.y, diameter);
    line(location.x, location.y, location.x + diameter/2, location.y);
    if (lives < 3 && glitchlength > 0) {
      //println("iosfhe");
      glitcheffectRandom(random(100, 200), location.x, location.y, lives + 0.3);
      glitchlength--;
    }  //maybe put in bullet class instead
    //can put depending on lives the asteroid design here
  }

  void act() {
    location.add(velocity);
    wrapAround();
    collisionCheck();
  }

  void death() {
    if (glitchlength <= 0) dead = true;
  }

  void collisionCheck() {
    int i = 0;
    while (i < objects.size()) {
      GameObject objBullet = objects.get(i);
      if (objBullet instanceof Bullet) {
        if (dist(location.x, location.y, objBullet.location.x, objBullet.location.y) < diameter/2 + objBullet.diameter/2 && lives > 0 && !objBullet.enemy) {
          //for (int e = 3; e > 0; e--) {
          //  glitcheffect(120, location.x, location.y);
          //}
          //if (lives == 1) {
          //  objects.add(new Asteroid()); //figure out how to limit the amout of asteroids on scrren yeah?
          //} else {
          objects.add(new Asteroid(location.x, location.y, lives -1));
          objects.add(new Asteroid(location.x, location.y, lives -1));
          //}
          lives = 0;
          objBullet.lives = 0;
          //println("iosfhe");
        }
        //} else if (dist(location.x, location.y, obj.location.x, obj.location.y) < diameter/2 + obj.diameter/2) {
        //  lives = 0;
        //  obj.lives = 0;
        //  println("iosfhe");
        //}
      }
      i++;
    }
  }
}

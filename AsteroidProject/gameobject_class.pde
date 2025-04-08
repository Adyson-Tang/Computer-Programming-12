class GameObject {

  PVector location, velocity;
  int lives;

  GameObject(float locx, float locy, float velx, float vely) {
    location = new PVector(locx, locy);
    velocity = new PVector(velx, vely);
    lives = 1;
  }
  
  GameObject(PVector loc, PVector vel) {
    location = loc;
    velocity = vel;
    velocity.setMag(10);
    lives = 1;
  }
  
  GameObject(PVector loc, PVector vel, int lv) {
    location = loc;
    velocity = vel;
    velocity.setMag(10);
    lives = lv;
  }

  void act() {
    //act();
  }

  void show() {
    //show();
  }
  
  void wrapAround() {
    if (location.x > width) location.x = 0;

    if (location.x < 0) location.x = width;

    if (location.y > height) location.y = 0;

    if (location.y < 0) location.y = height;
  }
}

class GameObject {

  PVector location, velocity;
  int lives;
  float diameter;
  boolean dead = false;
  boolean enemy = false;

  GameObject(float locx, float locy, float velx, float vely) {
    location = new PVector(locx, locy);
    velocity = new PVector(velx, vely);
    lives = 1;
  }
  
  GameObject(PVector loc, PVector vel) {
    location = loc;
    velocity = vel;
    //velocity.setMag(10);
    lives = 1;
  }
  
  GameObject(PVector loc, PVector vel, int lv) {
    location = loc;
    velocity = vel;
    //velocity.setMag(10);
    lives = lv;
  }
  
  GameObject(PVector loc, PVector vel, int lv, boolean enemy) {
    location = loc;
    velocity = vel;
    //velocity.setMag(10);
    lives = lv;
    this.enemy = enemy;
  }

  void act() {
    //act();
  }

  void show() {
    //show();
  }
  
  void death() {
     
  }
  
  void wrapAround() {
    if (location.x > width + diameter/2) location.x = 0;

    if (location.x < 0- diameter/2) location.x = width;

    if (location.y > height + diameter/2) location.y = 0;

    if (location.y < 0 - diameter/2) location.y = height;
  }
}

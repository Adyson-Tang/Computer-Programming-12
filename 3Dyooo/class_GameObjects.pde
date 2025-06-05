class GameObject {

  PVector location, velocity;
  int lives;
  float diameter;
  boolean enemy = false;
  PShape model = flowerA;
  PShape model1 = flowerC;
  float ry = 0;
  float scale = 0;
  boolean alive = true;
  
  GameObject(float locx, float locy, float locz, float velx, float vely, float velz) {
    location = new PVector(locx, locy, locz);
    velocity = new PVector(velx, vely, velz);
    lives = 1;
    alive = true;
  }
  GameObject(float locx, float locy, float locz) {
    location = new PVector(locx, locy, locz); 
  }
  GameObject(float locx, float locy, float locz, PShape s) {
   location = new PVector(locx, locy, locz);
   model = s;
  }
  GameObject(float locx, float locy, float locz, float r, float scale, PShape s) {
   location = new PVector(locx, locy, locz);
   this.scale = scale;
   this.ry = r;
   model = s;
  }
  
  GameObject(float locx, float locy, float locz, float r, float scale, PShape s, PShape s1) {
   location = new PVector(locx, locy, locz);
   this.scale = scale;
   this.ry = r;
   model = s;
   model1 = s1;
  }

  void act() {
    //act();
  }

  void show() {
    //show();
  }
}

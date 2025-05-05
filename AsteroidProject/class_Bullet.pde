class Bullet extends GameObject {

  //variables
  //PVector location;
  //PVector velocity;
  int timer;
  boolean enemy = false;
  boolean spider = false;

  Bullet() {
    super(player1.location.copy(), player1.direction.copy(), 1);
    timer = 60;
    velocity.setMag(10);
    diameter = 5;
    enemy = false;

  }
  Bullet (boolean enemy) {
    super(theUFO.location.copy(), theUFO.direction.copy(), 1, enemy);
    timer = 120;
    velocity.setMag(4);
    diameter = 5;
  }

  void show() {
    fill (0,0);
    stroke(black);
    strokeWeight(1);
    circle(location.x, location.y, diameter);
  }

  void act() {
    location.add(velocity);
    wrapAround();
    timer--;
    if (timer <= 0) {
      lives = 0;
      dead = true;
      //println("Tuysfg");
    }
  }
  void death () {
   if (lives == 0) dead = true; 
  }
  
  boolean isenemy() {
   return enemy; 
  }
  
  //boolean isOffScreen() {
  // return location.x > width || location.x < 0 || location.y < 0 || location.y > height; 
  //}
}

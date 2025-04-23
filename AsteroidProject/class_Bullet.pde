class Bullet extends GameObject {

  //variables
  //PVector location;
  //PVector velocity;
  int timer;
  boolean enemy = false;

  Bullet() {
    super(player1.location.copy(), player1.direction.copy(), 1);
    timer = 60;
    velocity.setMag(10);
    diameter = 5;

  }
  Bullet (boolean enemy) {
    super(theUFO.location.copy(), theUFO.direction.copy(), 1);
    timer = 60;
    velocity.setMag(10);
    diameter = 5;
    this.enemy = enemy;
  }

  void show() {
    fill (black);
    stroke(white);
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
  
  
  //boolean isOffScreen() {
  // return location.x > width || location.x < 0 || location.y < 0 || location.y > height; 
  //}
}

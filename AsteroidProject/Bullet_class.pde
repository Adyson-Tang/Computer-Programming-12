class Bullet extends GameObject {

  //variables
  //PVector location;
  //PVector velocity;
  //int lives;
  int timer;

  Bullet() {
    super(player1.location.copy(), player1.direction.copy());
    timer = 60;
    velocity.setMag(10);

  }

  void show() {
    fill (black);
    stroke(white);
    strokeWeight(1);
    circle(location.x, location.y, 4);
  }

  void act() {
    location.add(velocity);
    wrapAround();
    timer--;
    if (timer == 0) {
      lives = 0;
    }
  }
  
  //boolean isOffScreen() {
  // return location.x > width || location.x < 0 || location.y < 0 || location.y > height; 
  //}
}

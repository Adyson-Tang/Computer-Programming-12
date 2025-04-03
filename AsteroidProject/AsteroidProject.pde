//asteroids
//mode
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//PVector location;
//PVector velocity;
//PVector gravity;

//keyboard booleans
boolean upkey, downkey, leftkey, rightkey = false;

float d;

color black = #000000;
color white = #FFFFFF;

boolean mouseReleased;
boolean wasPressed;

Spaceship player1;
void setup () {
  size(800, 800);
  
  //location = new PVector(width/2, height/2);
  //gravity = new PVector(0.1, 0);
  //x = 10;
  //y = 10;
  
  //velocity = new PVector(5, 0);
  //velocity.rotate(random(0, 2*PI));
  //vx = random(-5, 5);
  //vy = random(-5, 5);
  d = 20;
  
  player1 = new Spaceship();
}

void draw() {
  if (mode == INTRO) {
    intro ();
  } else if (mode == GAME) {
    game ();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {
    pause();
  }
}

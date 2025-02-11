int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;


//font
PFont font;


//colors
color red = #E00707;
color orange = #E06907;
color yellow = #F2DC14;
color green = #0FAD05;
color blue = #0057CE;
color purple = #6300CE;
color pink = #C61C80;


//arrays for color and words
String[] words = {"RED", "ORANGE", "YELLOW", "GREEN", "BLUE", "PURPLE", "PINK"};
color [] colors = {red, orange, yellow, green, blue, purple, pink};

void setup() {
  size (500, 500);
  font = loadFont ("Silkscreen-100.vlw");
}

void draw() {
   if (mode == INTRO) {
    intro ();
  } else if (mode == GAME) {
    game ();
  } else if (mode == PAUSE) {
    pause ();
  } else if (mode == GAMEOVER) {
    gameover ();
  } else {
    println ("Error: Mode = " + mode);
  }
}

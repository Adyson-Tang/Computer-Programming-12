
//SOUND IMPORTS
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer success, failure, music;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;


//font
PFont font;


//colors
color white = #FFFFFF;

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

int randomWord = int (random (0, 6));
int randomColor = int (random (0, 6));

float rotateWord = 0;
float scaleWord = 0.5;

//boolean matches
boolean notAMatchb = false;
boolean Matchb = false;
boolean first = true;

float fiftyfifty = random(0, 1);
int points = 0;
int totalPoints = 0;


void setup() {
  size (500, 500);
  font = loadFont ("Silkscreen-100.vlw");
  minim = new Minim(this);
  failure = minim.loadFile ("failure.wav");
  success = minim.loadFile ("success.wav");
  music = minim.loadFile ("music.mp3");
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

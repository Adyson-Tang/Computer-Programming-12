
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
PImage [] gif;
double gifSetter = 1;

float rotateWord = 0;
float scaleWord = 0.5;

//boolean matches
boolean noMatchb = false;
boolean Matchb = false;
boolean first = true;

float fiftyfifty = random(0, 1);
int points = 0;
int totalPoints = 0;
int highscore = 0;

int randomButtonXMatch = int(random(0, width));
int randomButtonYMatch = int(random (0, height));
int randomButtonXnoMatch = int(random(0, width));
int randomButtonYnoMatch = int(random (0, height));

String script = "GAMEOVER";


void setup() {
  size (500, 500);
  font = loadFont ("Silkscreen-100.vlw");
  minim = new Minim(this);
  failure = minim.loadFile ("failure.wav");
  success = minim.loadFile ("success.wav");
  music = minim.loadFile ("music.mp3");
  randomButtonXMatch = int(random(100, width-100));
  randomButtonYMatch = int(random (100, height-100));
  //while (Math.max(randomButtonXMatch, width/2) - Math.min(randomButtonXMatch, width/2) >= 200 && Math.max(randomButtonYMatch, height/2) - Math.min(randomButtonYMatch, height/2) >= 200) {
  //  randomButtonXMatch = int(random(0, width));
  //  randomButtonYMatch = int(random (0, height));
  //}
  randomButtonXnoMatch = int(random(100, width-100));
  randomButtonYnoMatch = int(random (100, height-100));
  while (dist(randomButtonXMatch, randomButtonYMatch, randomButtonXnoMatch, randomButtonYnoMatch) <= 100) {
    randomButtonXMatch = int(random(100, width-100));
    randomButtonYMatch = int(random (100, height-100));
    randomButtonXnoMatch = int(random(100, width-100));
    randomButtonYnoMatch = int(random (100, height-100));
  }
  //gif
  gif = new PImage [19];
  int stargifCounter = 1;
  while (stargifCounter < 19) {
    gif[stargifCounter] = loadImage("frame" + stargifCounter + ".png");
    gif[stargifCounter].resize(width/3, width/3);
    stargifCounter++;
  }
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

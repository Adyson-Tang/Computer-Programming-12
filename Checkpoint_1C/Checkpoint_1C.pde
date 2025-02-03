//variables
color red = #F03F3F;
color blue = #3790ED;
color green = #00FF00;
color orange = #F55A2F;
color teal = #62FAD3;
color yellow = #FAEB62;
color brown = #EA925F;
color grey = #2C2B2A;
int suny = 105;
int moony = -500;
int R = 144;
int G = 200;
int B = 255;
float eyer = random(-14, 14);
float petalr = 0;
float petals = random (1, 3);
int numFlowers = 0;
int maxFlowers = 40;
float petalx = random(0, 800);
float petaly = random(0, 800);
float petalc = 240;

void setup () {
 size (800, 800); 
}

void draw() {
  house(100, 200, 2);
}

void house (int x, int y, float s) {
  pushMatrix();
  scale (s);
  translate (x, y);
  while (numFlowers < maxFlowers) {
    pushMatrix();
    rotate(random(0, 2 * PI));
    translate (petalx, petaly);
    petals = random (1, 3);
    while (petalr < 2 * PI) {
      petals(0, 0, petalr, petals, petalc);
      petalr = petalr + PI/3;
    }
    petalc = random (200, 330);
    petalx = random(-200, 300);
    petaly = random(-200, 300);
    petalr = 0;
    numFlowers++;
    popMatrix();
  }
  chimney();
  base();
  roof();
  windows(0, 0, eyer);
  windows(100, 0, eyer);
  popMatrix();
}

void base () {
  stroke (grey);
  fill (blue);
  rect (0, 0, 200, 190);
}

void chimney() {
  stroke (grey);
  fill (teal);
  rect (140, -100, 30, 100);
}

void roof () {
  fill (red);
  triangle (100, -110, -10, 10, 210, 10);
}

void windows (int x, int y, float r) {
  pushMatrix();
  translate(x, y);
  fill (#FFFFFF);
  ellipse (40, 100, 54, 55);
  fill (#000000);
  ellipse (40 + r, 100 + r, 20, 22);
  popMatrix();
}

void petals (float x, float y, float r, float s, float c) {
  pushMatrix();
  scale (s);
  rotate(r);
  translate(x, y);
  colorMode(HSB, 360, 70, 80);
  fill (c, 100, 100);
  ellipse (0, 10, 7, 15);
  popMatrix();
}
  

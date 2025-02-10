//variables
int mode = 0;
final int INTRO = 0;
final int FIRST = 1;
final int SECOND = 2;
final int THIRD = 3;
final int FOURTH = 4;

int xsecond = 50;
int ysecond = 50;
int xfourth = 50;
int yfourth = 50;

int xthird = width;
 int ythird = 0;


void setup() {
  colorMode(HSB, 360, 100, 100);
  size (500, 500);
  //seconde();
  
}

void draw () {
  if (mode == INTRO) {
    intro();
  } else if (mode == FIRST) {
    first();
  } else if (mode == SECOND) {
    seconde();
  } else if (mode == THIRD) {
    third();
  } else if (mode == FOURTH) {
    forth();
  }  else {
    println ("error");
  }
}

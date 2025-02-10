//variables
int mode = 0;
final int INTRO = 0;
final int FIRST = 1;
final int SECOND = 2;
final int THIRD = 3;

int xsecond = 50;
int ysecond = 50;


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
  } else {
    println ("error");
  }
}

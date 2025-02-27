
Mover myMover;
Mover[] myMovers;
int n = 20;
void setup () {
  size (600, 600);
  int i = 0;
  myMovers = new Mover[n];
  while (i < n) {
    myMovers[i] = new Mover();
    i++;
  }
  myMover = new Mover();
}

void draw () {
  background (50);
  int i = 0;
  while (i < n) {
    myMovers[i].act();
    myMovers[i].show();
    i++;
  }
}

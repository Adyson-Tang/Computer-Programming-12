void seconde() {
  background (#9ECE25);
  quilt(100, 100, 5, 8);
}

void quilt (int x, int y, int centerS, int colouredS) {
  pushMatrix ();
  translate (100, 100);
  float r = 0;
  int rndmC = color(random(0, 255), random(80, 100), random(80, 100));
  int rndmCo = color(random(0, 255), random(80, 100), random(80, 100));
  int i = 0;
  int cc = 0;
  while (i < 5) {
    pushMatrix();
    while (r < 2 * PI) {
      rotate (r);
      colouredCircle (i, #01458B, colouredS+cc);
      r = r + PI/2;
    }
    popMatrix();
    cc = cc + 5;
    i++;
    r = 0;
  }
  r = 0;
  pushMatrix();
  while (r < 2 * PI) {
    rotate (r);
    centerCircle (#25CE56, centerS);
    r = r + PI/2;
  }
  popMatrix();
  popMatrix();
}

void colouredCircle (int i, color c, int x) {
  fill (c);
  stroke (c);
  circle (x, x - 4, 5);
  circle (x - 4, x, 5);
  float add = 0;
  if (i > 0) {
    add = (2 * x)/(i + 2);
  }
  while (i > 0) {
    circle (x, add, 5);
    add = add - add;
    i--;
  }
}

void centerCircle (color c, int x) {
  fill (c);
  stroke (c);
  circle (x, 0, 5);
}

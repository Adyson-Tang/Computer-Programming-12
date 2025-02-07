void seconde() {
  background (#F0CC9D);
  int x = 40;
  int y = 40;
  while (y < height) {
    x = 40;
    while (x < width) {
      quilt(x, y, 5, 6);
      x = x + 70;
    }
    y = y + 70;
  }
}

void quilt (int x, int y, int centerS, int colouredS) {
  pushMatrix ();
  translate (x, y);
  float r = 0;
  colorMode(HSB, 255, 100, 100);
  int Hue = int(random (280, 350));
  int Saturation = int(random (80, 110));
  int Brightness =  int(random (70, 90));
  int rndmC = color(random(Hue - 50, Hue), random(Brightness - 50, Brightness), random(Saturation - 30, Saturation));
  int rndmCo = color(random(Hue -50, Hue), random(Brightness - 50, Brightness), random(Saturation - 30, Saturation));
  int i = 0;
  int cc = 2;
  while (i < 5) {
    pushMatrix();
    rndmCo = color(random(Hue - 50, Hue), random(Brightness - 50, Brightness), random(Saturation - 30, Saturation));
    while (r < 2 * PI) {
      rotate (r);
      colouredCircle (i, rndmCo, colouredS+cc);
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
    centerCircle (rndmC, centerS);
    r = r + PI/2;
  }
  popMatrix();
  popMatrix();
}

void colouredCircle (int i, color c, int x) {
  fill (c);
  stroke (#1C0200);
  circle (x, x - 4, 6);
  circle (x - 4, x, 6);
  float add = 0;
  if (i > 0) {
    add = (2 * x)/(i + 1);
  }
  float d = (2 * x)/(i + 1);
  while (i > 0) {
    circle (x, add, 6);
    add = add - d;
    i--;
  }
}

void centerCircle (color c, int x) {
  fill (c);
  stroke (#1C0200);
  circle (x, 0, 6);
}

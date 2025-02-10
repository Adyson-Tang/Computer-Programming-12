void forth() {
  if (yfourth < 60) {
    background (#F0CC9D);
  }
  while (yfourth < height) {
    xfourth = 50;
    while (xfourth < width) {
      tiles(xfourth, yfourth, 6, 6);
      xfourth = xfourth + 70;
    }
    yfourth = yfourth + 70;
  }
  buttonRight();
  buttonLeft();
}

void tiles (int x, int y, int centerS, int colouredS) {
  pushMatrix ();
  translate (x, y);
  float r = 0;
  colorMode(HSB, 360, 100, 100);
  int Hue = int(random (370, 400));
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
      tilesCircle (i, rndmCo, colouredS+cc);
      r = r + PI/2;
    }
    popMatrix();
    cc = cc + 10;
    i++;
    r = 0;
  }
  r = 0;
  pushMatrix();
  while (r < 2 * PI) {
    rotate (r);
    tilesCenterCircle (rndmC, centerS);
    r = r + PI/2;
  }
  popMatrix();
  popMatrix();
}

void tilesCircle (int i, color c, int x) {
  fill (c);
  stroke (#1C0200);
  circle (x, x - 4, 6);
  circle (x - 4, x, 6);
  float add = 0;
  float d = (2 * x)/(i + 1);
  if (i > 0) {
    add = x - d;
  }
  while (i > 0) {
    circle (x, add, 6);
    add = add - d;
    i--;
  }
}

void tilesCenterCircle (color c, int x) {
  fill (c);
  stroke (#1C0200);
  circle (x, 0, 6);
}

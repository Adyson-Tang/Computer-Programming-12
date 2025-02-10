void seconde() {
  if (ysecond < 60) {
    background (#F0CC9D);
  }
  while (ysecond < height) {
    xsecond = 50;
    while (xsecond < width) {
      quilt(xsecond, ysecond, 9, 13);
      xsecond = xsecond + 100;
    }
    ysecond = ysecond + 100;
  }
}

void quilt (int x, int y, int centerS, int colouredS) {
  pushMatrix ();
  translate (x, y);
  float r = 0;
  colorMode(HSB, 360, 100, 100);
  int Hue = int(random (140, 285));
  int Saturation = 50;
  int Brightness = 68;
  //int e = 0;
  //int edecider = int (random (-1, 2));
  //if (edecider > 0) {
  //    e = 30;
  //  } else {
  //    e = 0;
  //  }
  int rndmC = color(Hue, Saturation, Brightness);
  int rndmCo =  color(Hue, Saturation, Brightness);
  int i = 0;
  int cc = 2;
  int addh = int (random(-10, 10));
  int addb = int (random(-10, 10));
  while (i < 3) {
    //edecider = int (random (-1, 2));
    //if (edecider > 0) {
    //  e = 30;
    //  //edecider = int (random (-1, 1));
    //} else {
    //  e = 0;
    //}
    pushMatrix();
    addh = int (random(-25, 25));
    addb = int (random(-20, 20));
    //Hue = int(random (0, 360));
    rndmCo = color(Hue + addh, Saturation, Brightness + addb);
    while (r < 2 * PI) {
      rotate (r);
      colouredCircle (i, rndmCo, colouredS+cc);
      r = r + PI/2;
    }
    popMatrix();
    cc = cc + 8;
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
  circle (x, x - 8, 10);
  circle (x - 8, x, 10);
  float add = 0;
  float d = (2 * x)/(i + 1);
  if (i > 0) {
    add = x - d;
  }
  while (i > 0) {
    circle (x, add, 9);
    add = add - d;
    i--;
  }
}

void centerCircle (color c, int x) {
  fill (c);
  stroke (#1C0200);
  circle (x, 0, 10);
}

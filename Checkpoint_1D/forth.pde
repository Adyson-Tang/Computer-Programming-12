void quiltrose (int x, int y, int centerS, int colouredS) {
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
    cc = cc + 10;
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

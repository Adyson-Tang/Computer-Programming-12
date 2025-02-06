void first() {
  int x = 0;
  int y = 0;
  while (x < width) {
    if (x == width - 5) {
      x = -5;
      y = y + 5;
    }
    x = x + 5;
    color c = color(random (0, 220), random (0, 220), random (0, 220));
    pixel (x, y, c);
    if (y > height) {
      x = -5;
      y = 0;
      break;
    }
  }
}

void pixel(int x, int y, color c) {
  fill (c);
  stroke (c);
  rect(x, y, 5, 5);
}

void tv (int x, int y, int w, int h) {
  fill (#5A5A5A);
  stroke (#5A5A5A);
  rect (x, y, w, h);
  
  //round
  //rect (
}

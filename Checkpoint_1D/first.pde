void first() {
  background(#CE2525);
  int x = 0;
  int y = 0;
  
  if (x < width) {
    x++;
  }
  if (x == width) {
    x = 0;
    y++;
  }
  color c = color(random (0, 220), random (0, 220), random (0, 220));
  pixel (x, y, c);
}

void pixel(int x, int y, color c) {
  fill (c);
  stroke (c);
  rect(x, y, 1, 1);
}

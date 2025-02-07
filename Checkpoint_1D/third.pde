void third () {
  background(#25CEB9);
  int x = 0;
  int y = 0;
  biggerTri(100, 200);
  //while (y < height) {
  //  while (x < width) {
  //     biggerTri();
  //     x = x + 
  //  }
  //}
}

void biggerTri(int x, int y) {
  pushMatrix();
  translate(x, y);
  int tri = 0;
  float r = 0;
  pushMatrix();
  while (tri < 6) {
    rotate(r);
    longerTri();
    mainTri();
    tri++;
    r = r + (1/6 * PI);
  }
  popMatrix();
  popMatrix();
}

void mainTri() {
  stroke (#000000);
  fill(#000000, 0);
  line(0, 0, 0, -20);
}

void longerTri() {
  rotate(1/6*PI);
  stroke (#000000);
  fill(#000000, 0);
  line(0, 0, 0, 34.6);
}

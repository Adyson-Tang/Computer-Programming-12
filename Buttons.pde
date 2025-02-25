void buttonInteract (int x, int y, int s, int m, int nm) {
  if (dist (mouseX, mouseY, x, y) <= s && mode == m) {
    points = 0;
    mode = nm;
  }
}


void button (int x, int y, int s) {
  fill (#FFFFFF);
  stroke (#FFFFFF);
  strokeWeight(10);
  rectMode (CENTER);
  if (dist (mouseX, mouseY, x, y) <= s/2) {
    strokeWeight(5);
    rect (x, y, s, s, 20);
  } else {
  rect (x, y, s, s, 10);
  }
  rectMode (CORNER);
  //circle (x, y, s);
}

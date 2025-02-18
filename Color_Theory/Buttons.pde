void buttonInteract (int x, int y, int s, int m) {
  if (dist (mouseX, mouseY, x, y) <= s && mode == m) {
    points = -1;
    totalPoints = -1;
    mode++;
  }
}


void button (int x, int y, int s) {
  fill (#FFFFFF);
  stroke (#FFFFFF);
  strokeWeight(10);
  rectMode (CENTER);
  if (dist (mouseX, mouseY, x, y) <= s/2) {
    strokeWeight(5);
    rect (x, y, 70, 50, 20);
  } else {
  rect (x, y, 70, 50, 10);
  }
  rectMode (CORNER);
  //circle (x, y, s);
}

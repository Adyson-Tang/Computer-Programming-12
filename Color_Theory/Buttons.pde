void buttonInteract (int x, int y, int s, int m) {
  if (dist (mouseX, mouseY, x, y) <= s && mode == m) {
    points = 0;
    totalPoints = 0;
    mode++;
  }
}


void button (int x, int y, int s) {
  fill (#FFFFFF);
  stroke (#FFFFFF);
  strokeWeight(10);
  if (dist (mouseX, mouseY, x, y) <= s/2) {
    strokeWeight(5);
  }
  circle (x, y, s);
}

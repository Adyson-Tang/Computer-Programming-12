void buttonInteract () {
  if (dist (mouseX, mouseY, 450, 250) <= 50 && mode < 4 && mode != 0) {
    mode++;
  }
}


void button (int x, int y, int s) {
  fill (#FFFFFF);
  stroke (#FFFFFF);
  circle (x, y, s);
  if (dist (mouseX, mouseY, x, y) <= s) {
    strokeWeight(3);
  }
  strokeWeight(1);
  stroke (#000000);
}

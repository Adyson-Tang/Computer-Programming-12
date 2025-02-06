void mouseReleased () {
  buttonRight();
  buttonLeft();
}

void buttonRight () {
  if (dist (mouseX, mouseY, 450, 250) <= 50 && mode < 3 && mode != 0) {
    mode++;
  }
}

void buttonLeft () {
  if (dist (mouseX, mouseY, 50, 250) <= 50 && mode > 1 && mode != 0) {
    mode--;
  }
}

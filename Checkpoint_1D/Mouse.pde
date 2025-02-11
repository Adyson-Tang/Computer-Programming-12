void mouseReleased () {
  buttonRightInteract();
  buttonLeftInteract();
}

void buttonRightInteract () {
  if (dist (mouseX, mouseY, 450, 250) <= 50 && mode < 4 && mode != 0) {
    xsecond = 50;
    ysecond = 50;
    xfourth = 50;
    yfourth = 50;
    mode++;
  }
}

void buttonLeftInteract () {
  if (dist (mouseX, mouseY, 50, 250) <= 50 && mode > 1 && mode != 0) {
    xsecond = 50;
    ysecond = 50;
    xfourth = 50;
    yfourth = 50;
    mode--;
  }
}


void buttonRight () {
  fill (#FFFFFF);
  stroke (#FFFFFF);
  circle (450, 250, 50);
  stroke (#000000);
  strokeWeight(4);
  line (460, 250, 440, 265);
  line (460, 250, 440, 235);
  if (dist (mouseX, mouseY, 450, 250) <= 50) {
    fill (#000000);
    circle (450, 250, 50);
    stroke(#FFFFFF);
    line (460, 250, 440, 265);
    line (460, 250, 440, 235);
  }
  strokeWeight(1);
  stroke (#000000);
}

void buttonLeft () {
  fill (#FFFFFF);
  stroke (#FFFFFF);
  circle (50, 250, 50);
  stroke (#000000);
  strokeWeight(4);
  line (40, 250, 60, 265);
  line (40, 250, 60, 235);
  if (dist (mouseX, mouseY, 50, 250) <= 50) {
    fill (#000000);
    circle (50, 250, 50);
    stroke (#FFFFFF);
    line (40, 250, 60, 235);
    line (40, 250, 60, 265);
  }
  strokeWeight(1);
  stroke (#000000);
}

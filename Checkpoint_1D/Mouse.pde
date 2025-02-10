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
  circle (450, 250, 50);
  if (dist (mouseX, mouseY, 450, 250) <= 50) {
    fill (#000000);
    circle (450, 250, 50);
  }
}

void buttonLeft () {
  fill (#FFFFFF);
  
  circle (50, 250, 50);
  if (dist (mouseX, mouseY, 50, 250) <= 50) {
    fill (#000000);
    circle (50, 250, 50);
    stroke (#FFFFFF);
  }
}

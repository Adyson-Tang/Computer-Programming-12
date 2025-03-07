void click() {
 if (mousePressed) {
   wasPressed = true;
 }
 if (wasPressed && mousePressed == false) {
  mouseReleased = true;
  wasPressed = false;
 }
}

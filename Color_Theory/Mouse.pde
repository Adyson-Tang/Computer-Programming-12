void mouseReleased () {
  introbutton();
  if (mouseX > width/2 && mouseX < width && mouseY < height && mouseY > 0 && first == true && mode == GAME) {
   notAMatchb = true;
 }
  if (mouseX > 0 && mouseX < width/2 && mouseY < height && mouseY > 0 && first == true && mode == GAME) {
   Matchb = true;
  }
}

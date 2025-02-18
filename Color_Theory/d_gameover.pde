void gameover() {
  background(#000000);
  fill (white);
  text ("CONGRATS!", width/2, 2 * height/5);
  text (points + "/" + totalPoints, width/2, 3 * height/5);
  button (100, 100, 20);
}

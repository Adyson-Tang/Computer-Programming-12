void gameover() {
  background(#000000);
  fill (white);
  text ("CONGRATS!", width/2, 2 * height/6);
  text ("SCORE : " + points, width/2, 3 * height/6);
  text ("BEST : " + totalPoints, width/2, 4 * height/6);
  button (width/2, 400, 55);
}

void gameoverbutton() {
  buttonInteract(width/2, 400, 55, 4);
  //mode = 0;
}

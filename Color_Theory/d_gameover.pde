void gameover() {
  background(#000000);
  fill (white);
  textSize(40);
  text (script, width/2, 2 * height/6);
  text ("SCORE : " + points, width/2, 3 * height/6);
  text ("BEST : " + highscore, width/2, 4 * height/6);
  button (width/2, 400, 55);
}

void gameoverbutton() {
  script = "GAMEOVER";
  buttonInteract(width/2, 400, 55, 3, 0);
  
  //mode = 0;
}

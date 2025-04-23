void intro() {
  float go = random(10, 120);
  resetGame();
  background(black);
  textFont(font1);
  Button introButton = new Button("START", width/2, height/2, 100, 50, white, black);
  //introButton.showDefault(); //String _t, int _x, int _y, int _w, int _h, color ch, color cn
  //glitcheffectt
  //need smth


  if (go < 100) {
    textFont(font1);
  } else textFont(font2);
  introButton.showDefault();
  
  if (introButton.clicked) {
    mode = 1;
  }
  //int w2 = width/2;
  //int h2 = height/2;
  //if (glitch > random(40, 100)) {
  glitcheffectStart(go, width/2, height/2);
  // glitch = 0;
  //}
}



void resetGame() {
  objects.clear();
  objects = new ArrayList();
  player1 = new Spaceship();
  objects.add(player1);
  spacekey = false;
  objects.add(new UFO());
  //objects.add(new Asteroid());
  //objects.add(new Asteroid());
  //objects.add(new Asteroid());
  //objects.add(new Asteroid());
  //objects.add(new Asteroid());
  //objects.add(new Asteroid());
  //objects.add(new Asteroid());
}

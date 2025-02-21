void intro() {
  //textMode(CENTER);
  music.play();
  textAlign(CORNER, CORNER);
  background (#000000);
  textFont (font, 70);
  if (gifSetter == gif.length-2) {
    gifSetter = 1;
  }
  imageMode(CENTER);
  staranim(width/2, height/2, (int) gifSetter);
  gifSetter = gifSetter + 0.5;

  text("Color", width - 240, height/2 - 30);
  text ("Theory", width- 290, height/2 + 30);
  button (400, 400, 55);
}

void staranim (float x, float y, int i) {
  if (i < gif.length) {
    image (gif[i], x, y);
    i++;
  }
}

void introbutton() {
  buttonInteract(400, 400, 55, 0, 1);
}

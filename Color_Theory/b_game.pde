void game() {
  background(#000000);
  textSize (60);
  textAlign (CENTER, CENTER);

  fill (#FFFFFF);
  rect (0, 0, width/2, height);
  text ("NOT A", 3 * width/4, 225);
  text ("MATCH", 3 * width/4, 275);

  fill (#000000);
  text ("MATCH", width/4, height/2);


  if (scaleWord < 2.2) {
    theWord(colors [randomColor], words [randomWord], rotateWord, scaleWord);
    scaleWord = scaleWord + 0.01;
    rotateWord = rotateWord + 0.08;
  } else {
    randomWord = int (random (0, 6));
    randomColor = int (random (0, 6));

    rotateWord = 0;
    scaleWord = 0.5;
  }
}

void theWord (color c, String w, float r, float s) {
  textAlign (CENTER, CENTER);
  pushMatrix();
  translate(width/2, height/2);
  rotate(r);
  scale(s);
  fill (c);
  text (w, 0, 0);
  popMatrix();
}

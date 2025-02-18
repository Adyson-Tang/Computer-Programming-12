void game() {
  music.pause();
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
    scaleWord = scaleWord + 0.02;
    rotateWord = rotateWord + 0.09;
  }

  if (scaleWord >= 2.2) {
    mode = GAMEOVER;
  }

  if (notAMatchb) {
    if (randomColor != randomWord) {
      success.play();
      points++;
    }
    regen();
    notAMatchb = false;
  }

  if (Matchb) {
    if (randomColor == randomWord) {
      success.play();
      points++;
    }
    regen();
    Matchb = false;
  }
  //testing points ------> why does it start with ++1???
  //text ("" + points + "/" + totalPoints, 100, 100);
  //if (totalPoints >= 20) {
  //  mode = GAMEOVER;
  //}
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

void regen () {
    totalPoints++;
    fiftyfifty = random(0, 1);
    randomWord = int (random (0, 6));

    if (fiftyfifty >= 0.5) {
      randomColor = randomWord;
    } else {
      randomColor = int(random (0, 6));
      while (randomColor == randomWord) {
        randomColor = int(random (0, 6));
      }
    }

    rotateWord = 0;
    scaleWord = 0.5;
    first = true;
}

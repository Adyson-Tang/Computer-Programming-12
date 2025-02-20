void game() {
  music.pause();
  background(#000000);
  textSize (60);
  textAlign (CENTER, CENTER);

  fill (#FFFFFF);
  //rect (0, 0, width/2, height);
  //text ("NOT A", 3 * width/4, 225);
  //text ("MATCH", 3 * width/4, 275);

  // fill (#000000);
  //text ("MATCH", width/4, height/2);
  randomMatchButton();
  randomnoMatchButton();

  if (scaleWord < 3) {
    theWord(colors [randomColor], words [randomWord], rotateWord, scaleWord);
    scaleWord = scaleWord + 0.02;
    rotateWord = rotateWord + 0.09;
  }

  if (scaleWord >= 3) {
    scaleWord = 0.5;
    mode = GAMEOVER;
  }

  if (noMatchb) {
    randomButtonCoordinates();
    if (randomColor != randomWord) {
      success.play();
      points++;
      failure.play();
    } else {
      scaleWord = 0.5;
      mode = GAMEOVER;
    }
    regen();
    noMatchb = false;
  }

  if (Matchb) {
    randomButtonCoordinates();
    if (randomColor == randomWord) {
      success.play();
      points++;
    } else {
      failure.play();
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
  textSize(60);
  text (w, 0, 0);
  popMatrix();
}

void randomMatchButton() {
  button (randomButtonXMatch, randomButtonYMatch, 100);
  fill (#000000);
  textSize(15);
  text ("MATCH", randomButtonXMatch, randomButtonYMatch);
}

void randomnoMatchButton() {
  button (randomButtonXnoMatch, randomButtonYnoMatch, 100);
  fill (#000000);
  textSize(15);
  text ("NO MATCH", randomButtonXnoMatch, randomButtonYnoMatch);
}

void regen () {
  if (points > highscore) {
    script = "NEW HIGHSCORE!";
    highscore = points;
  }
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

void randomButtonCoordinates() {
  randomButtonXMatch = int(random(100, width-100));
  randomButtonYMatch = int(random (100, height-100));
  //while (Math.max(randomButtonXMatch, width/2) - Math.min(randomButtonXMatch, width/2) >= 200 && Math.max(randomButtonYMatch, height/2) - Math.min(randomButtonYMatch, height/2) >= 200) {
  //  randomButtonXMatch = int(random(0, width));
  //  randomButtonYMatch = int(random (0, height));
  //}
  randomButtonXnoMatch = int(random(100, width-100));
  randomButtonYnoMatch = int(random (100, height-100));
  while (dist(randomButtonXMatch, randomButtonYMatch, randomButtonXnoMatch, randomButtonYnoMatch) <= 100) {
    randomButtonXMatch = int(random(100, width-100));
    randomButtonYMatch = int(random (100, height-100));
    randomButtonXnoMatch = int(random(100, width-100));
    randomButtonYnoMatch = int(random (100, height-100));
  }
}

void gamebuttons() {
  if (dist (mouseX, mouseY, randomButtonXMatch, randomButtonYMatch) <= 100) {
    Matchb = true;
  }
  if (dist (mouseX, mouseY, randomButtonXnoMatch, randomButtonYnoMatch) <= 100) {
    noMatchb = true;
  }
}

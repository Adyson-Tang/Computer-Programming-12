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
  glitcheffect(go, width/2, height/2);
  // glitch = 0;
  //}
}

void glitcheffect(float go, float x, float y) {
  float w2 = x;
  float h2 = y;
  int add, add1, add2, add3, add4, add5;
  if (go > 100) {

    //textFont(font2);
    for (int n = 0; n< random(10, 18); n++) {
      textSize(random(20, 100));
      text("START", width/2 + random(-10, 10), height/2 + random (-10, 10));
      colorMode(HSB, 100, 100, 100);
      fill(color(random(0, 100), random(95, 100), random (95, 100)));
      add = int(random (-200, 100));
      add1 = int(random (-230, 100));
      add2 = int(random (-100, 250));
      add3 = int(random (-260, 200));
      add4 = int(random (-150, 400));
      add5 = int(random (-100, 240));
      if (n % 3 == 0) {
        triangle(w2 + add, h2 + add1, w2 + add2, h2 + add3, w2 + add4, h2 + add5);
      }
      //triangle(random(w2-100, w2+100), random(h2-60, h2 + 60), random(w2-100, w2+100), random(h2-60, h2 + 60), random(w2-100, w2+100), random(h2-60, h2 + 60));
    }
  } //else textFont(font1);
}

void glitcheffecta(float go, float x, float y) {
  float w2 = x;
  float h2 = y;
  int add, add1, add2, add3, add4, add5;
  if (go > 105) {

    //textFont(font2);
    for (int n = 0; n < random(10, 15); n++) {
      colorMode(HSB, 100, 100, 100);
      stroke(#000000);
      strokeWeight(1);
      fill(color(random(0, 100), random(98, 100), random (98, 100)));
      add = int(random (-160, 160));
      add1 = int(random (-130, 120));
      add2 = int(random (-120, 50));
      add3 = int(random (-160, 120));
      add4 = int(random (-50, 200));
      add5 = int(random (-100, 140));
      if (n % 5 == 0) {
        triangle(w2 + add, h2 + add1, w2 + add2, h2 + add3, w2 + add4, h2 + add5);
      }
      //triangle(random(w2-100, w2+100), random(h2-60, h2 + 60), random(w2-100, w2+100), random(h2-60, h2 + 60), random(w2-100, w2+100), random(h2-60, h2 + 60));
    }
  } //else textFont(font1);
}

class glitch {
}

void resetGame() {
  objects.clear();
  objects = new ArrayList();
  player1 = new Spaceship();
  objects.add(player1);
  spacekey = false;
  objects.add(new Asteroid());
  objects.add(new Asteroid());
  objects.add(new Asteroid());
  objects.add(new Asteroid());
  objects.add(new Asteroid());
  objects.add(new Asteroid());
  objects.add(new Asteroid());
  objects.add(new Asteroid());
}

void glitcheffectStart(float go, float x, float y) {
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

void glitcheffectRandom(float go, float x, float y) {
  float w2 = x;
  float h2 = y;
  int add, add1, add2, add3, add4, add5;
  if (go > 105) {

    //textFont(font2);
    for (int n = 0; n < random(10, 15); n++) {
      colorMode(HSB, 100, 100, 100);
      textSize(int(random(20, 50)));
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

      //add more triagles further away for bigger glitch vibe okkk
      if (n%8==0 && go < 150) {
        pushMatrix();
        translate(w2 + random(-30, 30), h2  + random(-20, 20));
        rotate(random(0, 2*PI));
        if ((int(go))%4 == 0) {
          textFont(font1, random(20, 50));
        } else {
          textFont(font2, random(20, 50));
        }
        //make text more random kkkkkkkkk
        text("()n$#SBU", 0, 0);
        popMatrix();
      }
      //triangle(random(w2-100, w2+100), random(h2-60, h2 + 60), random(w2-100, w2+100), random(h2-60, h2 + 60), random(w2-100, w2+100), random(h2-60, h2 + 60));
    }
  } //else textFont(font1);
}

class glitch {
}

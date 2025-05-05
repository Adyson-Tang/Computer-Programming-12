class GlitchParticle extends GameObject {
  int timer;
  PVector start;
  float alpha;
  boolean circ;
  float circw, circh;

  GlitchParticle(PVector location) {
    super(location);
    start = location;
    timer = 1;
    alpha = 100;
    circ = false;
  }

  GlitchParticle(PVector location, boolean c) {
    super(location);
    start = location;
    timer = 100;
    alpha = 100;
    circ = c;
    circw = random(20, 80);
    circh = random(20, 80);
  }
  void show() {
    if (!circ) {
      drawGlitch(random(100, 200), location.x, location.y);
    } else {
      drawGlitchCirc(random(100, 200), location.x, location.y);
    }
  }

  void act() {
    timer--;
    if (timer <= 0) {
      lives = 0;
      dead = true;
    }
  }

  void drawGlitch(float go, float x, float y) {
    float w2 = x;
    float h2 = y;
    int add, add1, add2, add3, add4, add5;
    if (go > 105) {

      //textFont(font2);
      for (int n = 0; n < random(10, 15); n++) {
        colorMode(HSB, 100, 100, 100);
        textSize(int(random(2, 5)));
        stroke(#000000);
        strokeWeight(1);
        fill(color(random(0, 100), random(98, 100), random (98, 100)));
        add = int(random (-35, 48));
        add1 = int(random (-47, 25));
        add2 = int(random (-57, 75));
        add3 = int(random (-59, 20));
        add4 = int(random (-53, 22));
        add5 = int(random (-54, 75));
        if (n % 2 == 0) {
          triangle(w2 + add, h2 + add1, w2 + add2, h2 + add3, w2 + add4, h2 + add5);
        }

        //add more triagles further away for bigger glitch vibe okkk
        if (go < 102) {
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

  void drawGlitchCirc(float go, float x, float y) {
    float w2 = x;
    float h2 = y;
    int add, add1, add2, add3, add4, add5;
    add = int(random (-35, 48));
    add1 = int(random (-47, 25));
    add2 = int(random (-57, 75));
    add3 = int(random (-59, 20));
    add4 = int(random (-53, 22));
    add5 = int(random (-54, 75));
    float vel, vel1, vel2, vel3, vel4, vel5 = random(-1, 1);
    vel = random(-1, 1);
    vel1 = random(-1, 1);
    vel2 = random(-1, 1);
    vel3 = random(-1, 1);
    vel4 = random(-1, 1);
    vel5 = random(-1, 1);
    if (go > 105) {

      //textFont(font2);
      for (int n = 0; n < random(10, 15); n++) {
        colorMode(HSB, 100, 100, 100);
        textSize(int(random(2, 5)));
        stroke(black);
        strokeWeight(1);
        fill(black);
        add += vel;
        add1 += vel1;
        add2 += vel2;
        add3 += vel3;
        add4 += vel4;
        add5 += vel5;
        ellipse(w2, h2, circw, circh); 
        circle(w2 + add, h2 + add1, random(10, 30));
        circle(w2 + add2, h2 + add3, random(10, 30));
        circle(w2 + add4, h2 + add5, random(10, 30));


        //add more triagles further away for bigger glitch vibe okkk
        //triangle(random(w2-100, w2+100), random(h2-60, h2 + 60), random(w2-100, w2+100), random(h2-60, h2 + 60), random(w2-100, w2+100), random(h2-60, h2 + 60));
      }
    } //else textFont(font1);
  }
}

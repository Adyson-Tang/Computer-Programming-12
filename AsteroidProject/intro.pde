void intro() {
  Button introButton = new Button("START", width/2, height/2, 100, 30, white, black);
  introButton.showDefault(); //String _t, int _x, int _y, int _w, int _h, color ch, color cn
  //glitcheffectt
  //need smth
  int w2 = width/2;
  int h2 = height/2;
  for (int n = 0; n< 20; n++) {
    colorMode(HSB, 100, 100, 100);
    fill(color(random(0, 100), random(95, 100), random (95, 100)));
    triangle(random(w2-100, w2+100), random(h2-60, h2 + 60), random(w2-100, w2+100), random(h2-60, h2 + 60), random(w2-100, w2+100), random(h2-60, h2 + 60));
  }
}

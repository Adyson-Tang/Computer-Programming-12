class Button {

  int x, y, w, h;
  boolean clicked;
  color highlight, normal;
  String t;

  Button() {
    x = width/2;
    y = height/2;
    w = 50;
    h = 50;
  }

  Button (String _t, int _x, int _y, int _w, int _h, color ch, color cn) {
    t = _t;
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    highlight = ch;
    normal = cn;
  }
  void showhighlight () {
    rectMode (CENTER);
    textAlign(CENTER, CENTER);
    fill(normal);
    stroke(0);
    strokeWeight(2);
    rect (x, y, w, h, 20);
    fill(highlight);
    textSize(w/4);
    text (t, x, y);
    clicked = false;
  }
  void act () {
    rectMode (CENTER);
    textAlign(CENTER, CENTER);
    if (mouseX > x-(w/2) && mouseX < x +(w/2) && mouseY > y-(h/2) && mouseY < y+(h/2)) {
      fill(highlight);
    } else {
      fill(normal);
    }
    stroke(0);
    strokeWeight(2);
    rect (x, y, w, h, 20);
    if (mouseX > x-(w/2) && mouseX < x +(w/2) && mouseY > y-(h/2) && mouseY < y+(h/2)) {
      fill(normal);
    } else {
      fill(highlight);
    }
    textSize(w/4);
    text (t, x, y);
  }
}

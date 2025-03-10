class Button {

  int x, y, w, h;
  boolean clicked;
  color highlight, normal;
  String t;
  String i;
  PImage I;

  Button() {
    x = width/2;
    y = height/2;
    w = 50;
    h = 50;
    highlight = #5FE56D;
    normal = #210FA0;
    t = "'yo?";
    clicked = false;
  }

  Button (String _t, int _x, int _y, int _w, int _h, color ch, color cn) {
    t = _t;
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    highlight = ch;
    normal = cn;
    clicked = false;
  }
  Button (int _x, int _y, int _w, int _h, color ch, color cn, PImage _i) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    highlight = ch;
    normal = cn;
    clicked = false;
    I = _i;
  }
  void showDefault () {
    rectMode (CENTER);
    textAlign(CENTER, CENTER);
    imageMode (CENTER);
    fill(normal);
    stroke(0);
    strokeWeight(3);
    rect (x, y, w, h, 20);
    fill(highlight);
    textSize(w/4);
    if (I == null) {
    text (t, x, y);
    } else image (I, x, y, w, h);
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
    textSize(min(w/4, h/4));
    if (I == null) {
    text (t, x, y);
    } else image (I, x, y, w, h);
    click();
    if (mouseReleased && mouseX > x-w/2 && mouseX < x +(w/2) && mouseY > y-(h/2) && mouseY < y+(h/2)) {
      clicked = true;
      mouseReleased = false;
    } else {
      clicked = false;
    }
  }
  //void showImage () {
  //  rectMode (CENTER);
  //  imageMode (CENTER);
  //  textAlign(CENTER, CENTER);
  //  fill(normal);
  //  stroke(0);
  //  strokeWeight(3);
  //  image (I, x, y, w, h);
  //  fill(highlight);
  //  textSize(w/4);
  //  //text (t, x, y);
  //  if (mouseX > x-(w/2) && mouseX < x +(w/2) && mouseY > y-(h/2) && mouseY < y+(h/2)) {
  //    fill(highlight);
  //  } else {
  //    fill(normal);
  //  }
  //  stroke(0);
  //  strokeWeight(2);
  //  image (I, x, y, w, h);
  //  if (mouseX > x-(w/2) && mouseX < x +(w/2) && mouseY > y-(h/2) && mouseY < y+(h/2)) {
  //    fill(normal);
  //  } else {
  //    fill(highlight);
  //  }
  //  textSize(min(w/4, h/4));
  //  //text (t, x, y);
  //  click();
  //  if (mouseReleased && mouseX > x-w/2 && mouseX < x +(w/2) && mouseY > y-(h/2) && mouseY < y+(h/2)) {
  //    clicked = true;
  //    mouseReleased = false;
  //  } else {
  //    clicked = false;
  //  }
  //}
}
//void act () {
//  rectMode (CENTER);
//  textAlign(CENTER, CENTER);
//}

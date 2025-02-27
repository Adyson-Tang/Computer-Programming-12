class Mover {
  
  //instance variables
  float x, y;
  
  //constructor
  Mover() {
   x = width/2;
   y = height/2;
  }
  
  //behavior methods
  void show() {
   stroke (0);
   strokeWeight(5);
   fill (255);
   circle (x, y, 100);
  }
  
  void act () {
    x = x + random (-5, 5);
    y = y + random (-5, 5);
  }
}

//Adyson Tang
//1/30/2025

//variables
color red = #F03F3F;
color blue = #3790ED;
color green = #00FF00;
color orange = #F55A2F;
color teal = #62FAD3;
color yellow = #FAEB62;
color brown = #EA925F;
color grey = #2C2B2A;

//Childrens drawing of house
void setup () {
  size (400, 600);
}

void draw () {
  background (#C9F7FF);
  strokeWeight (2);
  stroke (grey);
  //sun
  fill (yellow);
  strokeWeight (1);
  line (115, 105, 115, 50);
  line (115, 105, 130, 60);
  line (115, 105, 150, 80);
  line (115, 105, 150, 110);
  line (115, 105, 145, 135);
  line (115, 105, 115, 150);
  line (115, 105, 90, 60);
  line (115, 105, 80, 80);
  line (115, 105, 70, 105);
  line (115, 105, 80, 140);
  
  ellipse (115, 105, 55, 60);

  //chimney
  fill (teal);
  rect (240, 100, 30, 100);

  //body of house
  fill (blue);
  rect (100, 200, 200, 190);

  //roof
  fill (red);
  triangle (200, 90, 90, 210, 310, 210);

  //door
  fill (orange);
  rect (175, 270, 50, 120);

  //windows
  fill (#FFFFFF);
  ellipse (140, 300, 50, 55);
  triangle (265, 270, 240, 320, 290, 320);

  //ground
  strokeWeight(2.5);
  rect (-10, 390, 800, 800);
}

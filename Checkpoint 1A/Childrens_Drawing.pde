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
int y = 105;

//Childrens drawing of house
void setup () {
  size (400, 500);
}

void draw () {
  background (#C9F7FF);
  strokeWeight (2);
  stroke (grey);
  //sun
  fill (yellow);
  strokeWeight (1);
  line (115, y, 115, y - 55);
  line (115, y, 130, y - 45);
  line (115, y, 150, y - 25);
  line (115, y, 150, y + 5);
  line (115, y, 145, y + 20);
  line (115, y, 115, y + 45);
  line (115, y, 90, y - 45);
  line (115, y, 80, y - 25);
  line (115, y, 70, y);
  line (115, y, 80, y + 35);
  
  ellipse (115, y, 55, 58);
  
  //face
  //smile
  ellipse (115, y + 5, 26, 25);
  stroke (yellow);
  rect (100, y - 15, 36, 20);
  //eyes
  stroke (grey);
  fill (grey);
  circle (105, y - 5, 5);
  circle (125, y - 5, 5);
  fill (yellow);

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
  
  //circle test
  //y++;
  if (y > 650) {
    y = -50;
  }
  //circle (100, y, 100);
}

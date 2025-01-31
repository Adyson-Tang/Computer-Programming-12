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
int suny = 105;
int moony = -500;
int R = 144;
int G = 200;
int B = 255;
  boolean set = true;

//Childrens drawing of house
void setup () {
  size (400, 500);
}

void draw () {
  //colorMode(HSB);
  background (R, G, B);
  strokeWeight (2);
  stroke (grey);
  //sun
  fill (yellow);
  strokeWeight (1);
  line (115, suny, 115, suny - 55);
  line (115, suny, 130, suny - 45);
  line (115, suny, 150, suny - 25);
  line (115, suny, 150, suny + 5);
  line (115, suny, 145, suny + 20);
  line (115, suny, 115, suny + 45);
  line (115, suny, 90, suny - 45);
  line (115, suny, 80, suny - 25);
  line (115, suny, 70, suny);
  line (115, suny, 80, suny + 35);
  
  ellipse (115, suny, 55, 58);
  
  //face
  //smile
  ellipse (115, suny + 5, 26, 25);
  stroke (yellow);
  rect (100, suny - 15, 36, 20);
  //eyes
  stroke (grey);
  fill (grey);
  circle (105, suny - 5, 5);
  circle (125, suny - 5, 5);
  
  //moon
  fill (yellow);
  ellipse (115, moony, 55, 58);
  fill (R, G, B);
  stroke (R, G, B);
  ellipse (100, moony, 30, 30);

  //chimney
  stroke (grey);
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
  suny = suny + 3;
  moony = moony + 3;
  if (suny > 250) set = true;
  if (moony > 250) set = false;
  if (suny > 650) {
    suny = -500;
  }
  if (set == true && R > -10) {
      R--;
      G--;
      B--;
  } else if (R < 160) {
    R++;
    G++;
    B++;
  }
  if (moony > 650) {
    //R = 144;
    //G = 200;
    //B = 255;
   moony = -500; 
  }
  //circle (100, y, 100);
}

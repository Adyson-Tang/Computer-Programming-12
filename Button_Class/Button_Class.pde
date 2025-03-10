//colors
color red = #F03C3C;
color orange = #F0783C;
color yellow = #E5FF74;
color green = #74FF83;
color blue = #1FD0FF;
color purple = #7E46E0;
color pink = #FF6FBC;
color black = #000000;
color white = #FFFFFF;


Button yellowButton = new Button ("YELLOW", 150, 100, 200, 100, green, yellow);
Button blueButton =  new Button("BLUE", 400, 200, 200, 200, pink, blue);
PImage cat;
Button imageButton;
Button blackButton = new Button();
boolean mouseReleased;
boolean wasPressed;
void setup () {
  size (600, 600);
  //PImage cat;
  cat = loadImage("cat.png");
  imageButton =  new Button(400, 400, 200, 200, pink, blue, cat);
  blackButton = new Button();
}

void draw () {
  if (yellowButton.clicked) {
    background(yellow);
  }
  yellowButton.showDefault();
  // redButton.act();
  if (blueButton.clicked) {
    background(blue);
  }
  blueButton.showDefault();

  if (imageButton.clicked) {
    image(cat, width/2, height/2, width, height);
  }
  imageButton.showDefault();
  //blueButton.act();
}

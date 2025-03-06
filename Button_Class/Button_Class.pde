//colors
color red = #F03C3C;
color orange = #F0783C;
color yellow = #F0C93C;
color green = #62E046;
color blue = #4687E0;
color purple = #7E46E0;
color pink = #EA5A88;
color black = #000000;
color white = #FFFFFF;


Button redButton = new Button ("RED", 200, 100, 200, 100, green, red);
Button blueButton =  new Button("BLUE", 400, 200, 200, 200, purple, blue);
Button blackButton = new Button();
boolean mouseReleased;
boolean wasPressed;
void setup () {
  size (600, 600);
  
}

void draw () {
  if (redButton.clicked) {
    background(red);
    println("posd");
  } 
  redButton.show();
  redButton.act();
  blueButton.show();
  blueButton.act();
}

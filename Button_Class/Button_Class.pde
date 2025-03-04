Button newButton = new Button();
void setup () {
  size (600, 600);
}

void draw () {
  newButton = new Button ("test", 100, 100, 200, 100, #FF6464, #7864FF);
  newButton.showhighlight();
  newButton.act();
}

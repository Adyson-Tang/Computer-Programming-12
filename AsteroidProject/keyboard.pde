void keyPressed() {
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
}

void keyReleased() {
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  
  if (keyCode == ENTER && mode == INTRO) {
   mode = GAME; 
  }
  
  if (key == ' ' && mode == GAME) {
    mode = 2;
    println("hello");
  } else if (key == ' ') {
    mode = 1;
  }
}

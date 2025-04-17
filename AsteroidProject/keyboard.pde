void keyPressed() {
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (key == ' ' && mode == GAME) spacekey = true;
}

void keyReleased() {
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  
  //if (keyCode == ENTER && mode == INTRO) {
  // mode = GAME; 
  //}
  
  if (keyCode == ENTER) {
   if (mode == INTRO) mode = GAME;
   else if (mode == GAME) mode = PAUSE;
   else if (mode == PAUSE) mode = GAME;
   else if (mode == GAMEOVER) mode = INTRO;
  }
  if (mode == 4) {
   mode = 0; 
  }
  
  if (key == ' ' && mode == GAME) spacekey = false;
  
}

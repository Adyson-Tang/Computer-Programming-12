void keyPressed() {
  if (key == 'W' || key == 'w') wkey = true;
  if (key == 'A' || key == 'a') akey = true;
  if (key == 'D' || key == 'd') dkey = true;
  if (key == 'S' || key == 's') skey = true;
  if (key == 'F' || key == 'f') fkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == UP) upkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
}

void keyReleased() {
  if (key == 'W' || key == 'w') wkey = false;
  if (key == 'A' || key == 'a') akey = false;
  if (key == 'D' || key == 'd') dkey = false;
  if (key == 'S' || key == 's') skey = false;
  if (key == 'F' || key == 'f') {
    hold = 20;
    fkey = false;
  }
  if (keyCode == DOWN) downkey = false;
  if (keyCode == UP) upkey = false;
   if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  
    if (key == ' ' && spacekey == false) {
      spacekey = true;
      velocity = -10;
    }
}

void mouseDragged() {
  rotX = rotX + (pmouseY - mouseY) * 0.01;
  rotY = rotY + (pmouseX - mouseX) * 0.01;
}

void mouseClicked() {
  clicked = true;
}

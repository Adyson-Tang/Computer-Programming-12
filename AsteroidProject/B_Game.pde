void game () {
  background(bg);
  randomUFO = random(-1, 300);

  if (randomUFO < 0 && theUFO.lives == 0) {
    theUFO = new UFO();
    objects.add(theUFO);
  }

  int i = 0;
  while (i < objects.size()) {
    GameObject currentObject = objects.get(i);
    currentObject.act();
    currentObject.show();
    currentObject.death();
    if (currentObject.lives == 0 && currentObject.dead)
      objects.remove(i);
    else
      i++;
  }

  fill(black);
  textSize(50);
  text(objects.get(0).lives, 30, 30);
  text(objects.size(), 100, 100);
  text(theUFO.lives, 50, 100);
  if (objects.size() <= 1) {
    mode = GAMEOVER;
  }


  //teleport
  if (tkey) {
    player1.teleport();
    //println("UHS");
    teleportTimer = 200;
    tkey = false;
  } else {
    teleportTimer--;
  }
  //player1.test();
  //println(player1.getLoc());
  //for (int i = 0; i < objects.size(); i++) {
  //  GameObject currentObject = objects.get(i);
  //  currentObject.show();
  //  currentObject.act();
  //  if (currentObject.lives == 0) {
  //    objects.remove(i);
  //    println("iahs");
  //    i--;
  //  }
  //}
}
void teleport() {
  
}

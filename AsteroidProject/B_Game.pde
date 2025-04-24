void game () {
  background(#000000);
  randomUFO = random(-1, 500);

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

  fill(white);
  textSize(50);
  text(objects.get(0).lives, 30, 30);
  text(objects.size(), 100, 100);
  text(theUFO.lives, 50, 100);
  if (objects.size() <= 1) {
    mode = GAMEOVER;
  }
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

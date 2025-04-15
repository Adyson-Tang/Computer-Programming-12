void game () {
  background(#000000);

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

void pause() {
   //background(#FFFFFF);
 player1.show();
 int i = 0;
  while (i < objects.size()) {
    GameObject currentObject = objects.get(i);
    currentObject.show();
    if (currentObject.lives == 0 && currentObject.dead) 
      objects.remove(i);
     else 
      i++; 
  }
    
 //player1.act();
 fill(black, 100);
 rect(width/2 - 10, height/2, width + 20, height);
}

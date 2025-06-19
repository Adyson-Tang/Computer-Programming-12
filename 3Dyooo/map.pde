void drawMap() {
  
  for (int x = 0; x <= map.width; x++) {
   for (int y = 0; y <= map.height; y++) {
//println(map.width + " " + map.height);
    color c = map.get(x, y);
    //if (c != white) {
    // pushMatrix();
    // fill(c);
    // stroke(100);
    // translate(x*gridSize - 2000, height, y*gridSize - 2000);
    // block.drawBlock();
    //box(grudSize);
    // popMatrix();
    //}
    if (c != white) {
     objects.add(new Block(x - size/gridSize, 0, y - size/gridSize, c)); 
    }
   }
  }
  
}

void drawdrawMap() {
 if (clicked) {
   //println("wtf");
  //objects.add(new ball());
  clicked = false;
 }
 for (int i = 0; i < objects.size(); i++) {
    objects.get(i).show();
    objects.get(i).act();
    if (!objects.get(i).alive) {
      objects.remove(i);
      i--;
      //println("SALKJ");
    }
  } 
}

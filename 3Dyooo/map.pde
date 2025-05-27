void drawMap() {
  
  for (int x= 0; x <= map.width; x++) {
   for (int y = 0; y <= map.height; y++) {
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
     blocks.add(new Block(x - 20, 0, y - 20, c)); 
    }
   }
  }
  
}

void drawdrawMap() {
 for (int i = 0; i < blocks.size(); i++) {
    blocks.get(i).drawBlock();
  } 
}

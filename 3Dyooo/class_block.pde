class Block {
  PImage top, backside, leftside, rightside, frontside, bottom;
 Block() {
   top = topDB;
   backside = sideDB;
   leftside = sideDB;
   rightside = sideDB;
   frontside = sideDB;
   bottom = bottomDB;
 }
 //sides same
 Block(PImage top, PImage side, PImage bottom) {
   this.top = top;
   this.backside = side;
   this.leftside = side;
   this.rightside = side;
   this.frontside = side;
   this.bottom = bottom;
 }
 
 //full unique
 Block(PImage top, PImage backside, PImage leftside, PImage rightside, PImage frontside, PImage bottom) {
   this.top = top;
   this.backside = backside;
   this.leftside = leftside;
   this.rightside = rightside;
   this.frontside = frontside;
   this.bottom = bottom;
 }
 
 void drawBlock() {
   //top
  beginShape(QUADS);
  texture(top);
  vertex(-0.5, -0.5, -0.5, 0, 0);
  vertex(0.5, -0.5, -0.5, 1, 0);
  vertex(0.5, -0.50, 0.5, 1, 1);
  vertex(-0.5, -0.5, 0.5, 0, 1);
  endShape();
  
  //backside
  pushMatrix();
  rotateX(radians(-90));
  beginShape(QUADS);
  texture(backside);
  vertex(-0.5, 0.5, -0.5, 0, 0);
  vertex(0.5, 0.5, -0.5, 1, 0);
  vertex(0.5, 0.50, 0.5, 1, 1);
  vertex(-0.5, 0.5, 0.5, 0, 1);
  endShape();
  popMatrix();
  
  //leftside
  pushMatrix();
  rotateX(radians(-90));
  rotateZ(radians(90));
  beginShape(QUADS);
  texture(leftside);
  vertex(-0.5, 0.5, -0.5, 0, 0);
  vertex(0.5, 0.5, -0.5, 1, 0);
  vertex(0.5, 0.50, 0.5, 1, 1);
  vertex(-0.5, 0.5, 0.5, 0, 1);
  endShape();
  popMatrix();
  
  //frontside
  pushMatrix();
  rotateX(radians(-90));
  rotateZ(radians(-180));
  beginShape(QUADS);
  texture(frontside);
  vertex(-0.5, 0.5, -0.5, 0, 0);
  vertex(0.5, 0.5, -0.5, 1, 0);
  vertex(0.5, 0.50, 0.5, 1, 1);
  vertex(-0.5, 0.5, 0.5, 0, 1);
  endShape();
  popMatrix();
  
  //rightside
  pushMatrix();
  rotateX(radians(-90));
  rotateZ(radians(-90));
  beginShape(QUADS);
  texture(rightside);
  vertex(-0.5, 0.5, -0.5, 0, 0);
  vertex(0.5, 0.5, -0.5, 1, 0);
  vertex(0.5, 0.50, 0.5, 1, 1);
  vertex(-0.5, 0.5, 0.5, 0, 1);
  endShape();
  popMatrix();
  
  //bottom
  beginShape(QUADS);
  texture(bottom);
  vertex(-0.5, 0.5, -0.5, 0, 0);
  vertex(0.5, 0.5, -0.5, 1, 0);
  vertex(0.5, 0.50, 0.5, 1, 1);
  vertex(-0.5, 0.5, 0.5, 0, 1);
  
  vertex(0, 1, 0, 0, 0);
  endShape();
  
 }
  
}

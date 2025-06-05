//class Block {
//  PImage top, backside, leftside, rightside, frontside, bottom;
//  color c = #FFFFFF;
//  boolean colour = false;
//  int x, y, z = 0;
//  boolean collide = false;
//  Block() {
//    top = topDB;
//    backside = sideDB;
//    leftside = sideDB;
//    rightside = sideDB;
//    frontside = sideDB;
//    bottom = bottomDB;
//  }
//  //sides same
//  Block(PImage top, PImage side, PImage bottom) {
//    this.top = top;
//    this.backside = side;
//    this.leftside = side;
//    this.rightside = side;
//    this.frontside = side;
//    this.bottom = bottom;
//    colour = false;
//  }

//  //full unique
//  Block(PImage top, PImage backside, PImage leftside, PImage rightside, PImage frontside, PImage bottom) {
//    this.top = top;
//    this.backside = backside;
//    this.leftside = leftside;
//    this.rightside = rightside;
//    this.frontside = frontside;
//    this.bottom = bottom;
//    colour = false;
//  }

//  //position
//  Block(int x, int y, int z, color c) {
//    this.x = x;
//    this.z = z;
//    this.y = y;
//    this.c = c;
//    top = topDB;
//    backside = sideDB;
//    leftside = sideDB;
//    rightside = sideDB;
//    frontside = sideDB;
//    bottom = bottomDB;
//    colour = true;
//  }
  
//  boolean collisions() {
//    //println("OISFA");
//   if (dist(eyeX, eyeZ, x, z) < 10) {
//        println("YEYS");
//        collide = true; 
//      } else collide = false; 
//      return collide;
//  }

//  void drawBlock() {
//    if (!colour) {
//      pushMatrix();
//      //scale(10);
//      translate(x, y, z);
//      if (dist(eyeX, eyeZ, x, z) < 100) {
//        println("YEYS");
//        //collide = true; 
//      } 
      
 
//      //box(gridSize);
//      //top
//      beginShape(QUADS);
//      texture(top);
//      //fill(#000000);
//      vertex(-0.5, -0.5, -0.5, 0, 0);
//      vertex(0.5, -0.5, -0.5, 1, 0);
//      vertex(0.5, -0.50, 0.5, 1, 1);
//      vertex(-0.5, -0.5, 0.5, 0, 1);
//      endShape();

//      //backside
//      pushMatrix();
//      rotateX(radians(-90));
//      beginShape(QUADS);
//      texture(backside);
//      vertex(-0.5, 0.5, -0.5, 0, 0);
//      vertex(0.5, 0.5, -0.5, 1, 0);
//      vertex(0.5, 0.50, 0.5, 1, 1);
//      vertex(-0.5, 0.5, 0.5, 0, 1);
//      endShape();
//      popMatrix();

//      //leftside
//      pushMatrix();
//      rotateX(radians(-90));
//      rotateZ(radians(90));
//      beginShape(QUADS);
//      texture(leftside);
//      vertex(-0.5, 0.5, -0.5, 0, 0);
//      vertex(0.5, 0.5, -0.5, 1, 0);
//      vertex(0.5, 0.50, 0.5, 1, 1);
//      vertex(-0.5, 0.5, 0.5, 0, 1);
//      endShape();
//      popMatrix();

//      //frontside
//      pushMatrix();
//      rotateX(radians(-90));
//      rotateZ(radians(-180));
//      beginShape(QUADS);
//      texture(frontside);
//      vertex(-0.5, 0.5, -0.5, 0, 0);
//      vertex(0.5, 0.5, -0.5, 1, 0);
//      vertex(0.5, 0.50, 0.5, 1, 1);
//      vertex(-0.5, 0.5, 0.5, 0, 1);
//      endShape();
//      popMatrix();

//      //rightside
//      pushMatrix();
//      rotateX(radians(-90));
//      rotateZ(radians(-90));
//      beginShape(QUADS);
//      texture(rightside);
//      vertex(-0.5, 0.5, -0.5, 0, 0);
//      vertex(0.5, 0.5, -0.5, 1, 0);
//      vertex(0.5, 0.50, 0.5, 1, 1);
//      vertex(-0.5, 0.5, 0.5, 0, 1);
//      endShape();
//      popMatrix();

//      //bottom
//      beginShape(QUADS);
//      texture(bottom);
//      vertex(-0.5, 0.5, -0.5, 0, 0);
//      vertex(0.5, 0.5, -0.5, 1, 0);
//      vertex(0.5, 0.50, 0.5, 1, 1);
//      vertex(-0.5, 0.5, 0.5, 0, 1);
//      vertex(0, 1, 0, 0, 0);
//      endShape();
//      popMatrix();
//    } else {
//      // if (dist(x, z, eyeX, eyeZ) > 100) {
//      //  println("YEYS");
//      //  collide = false; 
//      //} else collide = true;
      
//      pushMatrix();
//      fill(c);
//      stroke(white);
//      strokeWeight(0.01);
//      translate(x, y, z);
//      //box(gridSize);
//      //top
//      beginShape(QUADS);
//      vertex(-0.5, -0.5, -0.5, 0, 0);
//      vertex(0.5, -0.5, -0.5, 1, 0);
//      vertex(0.5, -0.50, 0.5, 1, 1);
//      vertex(-0.5, -0.5, 0.5, 0, 1);
//      endShape();

//      //backside
//      pushMatrix();
//      rotateX(radians(-90));
//      beginShape(QUADS);
//      vertex(-0.5, 0.5, -0.5, 0, 0);
//      vertex(0.5, 0.5, -0.5, 1, 0);
//      vertex(0.5, 0.50, 0.5, 1, 1);
//      vertex(-0.5, 0.5, 0.5, 0, 1);
//      endShape();
//      popMatrix();

//      //leftside
//      pushMatrix();
//      rotateX(radians(-90));
//      rotateZ(radians(90));
//      beginShape(QUADS);
//      vertex(-0.5, 0.5, -0.5, 0, 0);
//      vertex(0.5, 0.5, -0.5, 1, 0);
//      vertex(0.5, 0.50, 0.5, 1, 1);
//      vertex(-0.5, 0.5, 0.5, 0, 1);
//      endShape();
//      popMatrix();

//      //frontside
//      pushMatrix();
//      rotateX(radians(-90));
//      rotateZ(radians(-180));
//      beginShape(QUADS);
//      vertex(-0.5, 0.5, -0.5, 0, 0);
//      vertex(0.5, 0.5, -0.5, 1, 0);
//      vertex(0.5, 0.50, 0.5, 1, 1);
//      vertex(-0.5, 0.5, 0.5, 0, 1);
//      endShape();
//      popMatrix();

//      //rightside
//      pushMatrix();
//      rotateX(radians(-90));
//      rotateZ(radians(-90));
//      beginShape(QUADS);
//      vertex(-0.5, 0.5, -0.5, 0, 0);
//      vertex(0.5, 0.5, -0.5, 1, 0);
//      vertex(0.5, 0.50, 0.5, 1, 1);
//      vertex(-0.5, 0.5, 0.5, 0, 1);
//      endShape();
//      popMatrix();

//      //bottom
//      beginShape(QUADS);
//      vertex(-0.5, 0.5, -0.5, 0, 0);
//      vertex(0.5, 0.5, -0.5, 1, 0);
//      vertex(0.5, 0.50, 0.5, 1, 1);
//      vertex(-0.5, 0.5, 0.5, 0, 1);
//      vertex(0, 1, 0, 0, 0);
//      endShape();
//      popMatrix();
//    }
//  }
//}

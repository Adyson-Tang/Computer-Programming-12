class Block extends GameObject{
  PImage top, backside, leftside, rightside, frontside, bottom;
  color c = #FFFFFF;
  boolean colour = false;
  float x, y, z = 0;
  boolean collide = false;
  Block() {
    super(0, 0, 0);
    top = topDB;
    backside = sideDB;
    leftside = sideDB;
    rightside = sideDB;
    frontside = sideDB;
    bottom = bottomDB;
  }
  //sides same
  Block(PImage top, PImage side, PImage bottom) {
    super(0, 0, 0);
    this.top = top;
    this.backside = side;
    this.leftside = side;
    this.rightside = side;
    this.frontside = side;
    this.bottom = bottom;
    colour = false;
  }

  //full unique
  Block(PImage top, PImage backside, PImage leftside, PImage rightside, PImage frontside, PImage bottom) {
    super(0, 0, 0);
    this.top = top;
    this.backside = backside;
    this.leftside = leftside;
    this.rightside = rightside;
    this.frontside = frontside;
    this.bottom = bottom;
    colour = false;
  }

  //position
  Block(int x, int y, int z, color c) {
    super (x, y, z);
    this.c = c;
    top = topDB;
    backside = sideDB;
    leftside = sideDB;
    rightside = sideDB;
    frontside = sideDB;
    bottom = bottomDB;
    colour = true;
  }
  
  Block(int x, int y, int z, PImage top, PImage side, PImage bottom) {
    super (x, y, z);
    this.top = top;
    this.backside = side;
    this.leftside = side;
    this.rightside = side;
    this.frontside = side;
    this.bottom = bottom;
    colour = false;
  }
  
  
  void show() {
    if (!colour) {
      world.pushMatrix();
      //scale(10);
      world.translate(location.x, location.y, location.z);
     
 
      //box(gridSize);
      //top
      world.beginShape(QUADS);
      world.texture(top);
      //fill(#000000);
      world.vertex(-0.5, -0.5, -0.5, 0, 0);
      world.vertex(0.5, -0.5, -0.5, 1, 0);
      world.vertex(0.5, -0.50, 0.5, 1, 1);
      world.vertex(-0.5, -0.5, 0.5, 0, 1);
      world.endShape();

      //backside
      world.pushMatrix();
      world.rotateX(radians(-90));
      world.beginShape(QUADS);
      world.texture(backside);
      world.vertex(-0.5, 0.5, -0.5, 0, 0);
      world.vertex(0.5, 0.5, -0.5, 1, 0);
      world.vertex(0.5, 0.50, 0.5, 1, 1);
      world.vertex(-0.5, 0.5, 0.5, 0, 1);
      world.endShape();
      world.popMatrix();

      //leftside
      world.pushMatrix();
      world.rotateX(radians(-90));
      world.rotateZ(radians(90));
      world.beginShape(QUADS);
      world.texture(leftside);
      world.vertex(-0.5, 0.5, -0.5, 0, 0);
      world.vertex(0.5, 0.5, -0.5, 1, 0);
      world.vertex(0.5, 0.50, 0.5, 1, 1);
      world.vertex(-0.5, 0.5, 0.5, 0, 1);
      world.endShape();
      world.popMatrix();

      //frontside
      world.pushMatrix();
      world.rotateX(radians(-90));
      world.rotateZ(radians(-180));
      world.beginShape(QUADS);
      world.texture(frontside);
      world.vertex(-0.5, 0.5, -0.5, 0, 0);
      world.vertex(0.5, 0.5, -0.5, 1, 0);
      world.vertex(0.5, 0.50, 0.5, 1, 1);
      world.vertex(-0.5, 0.5, 0.5, 0, 1);
      world.endShape();
      world.popMatrix();

      //rightside
      world.pushMatrix();
      world.rotateX(radians(-90));
      world.rotateZ(radians(-90));
      world.beginShape(QUADS);
      world.texture(rightside);
      world.vertex(-0.5, 0.5, -0.5, 0, 0);
      world.vertex(0.5, 0.5, -0.5, 1, 0);
      world.vertex(0.5, 0.50, 0.5, 1, 1);
      world.vertex(-0.5, 0.5, 0.5, 0, 1);
      world.endShape();
      world.popMatrix();

      //bottom
      world.beginShape(QUADS);
      world.texture(bottom);
      world.vertex(-0.5, 0.5, -0.5, 0, 0);
      world.vertex(0.5, 0.5, -0.5, 1, 0);
      world.vertex(0.5, 0.50, 0.5, 1, 1);
      world.vertex(-0.5, 0.5, 0.5, 0, 1);
      world.vertex(0, 1, 0, 0, 0);
      world.endShape();
      world.popMatrix();
    } else {
      // if (dist(x, z, eyeX, eyeZ) > 100) {
      //  println("YEYS");
      //  collide = false; 
      //} else collide = true;
      
      world.pushMatrix();
      world.fill(c);
      world.stroke(white);
      world.strokeWeight(0.01);
      world.translate(location.x, location.y, location.z);
      //box(gridSize);
      //top
      world.beginShape(QUADS);
      world.vertex(-0.5, -0.5, -0.5, 0, 0);
      world.vertex(0.5, -0.5, -0.5, 1, 0);
      world.vertex(0.5, -0.50, 0.5, 1, 1);
      world.vertex(-0.5, -0.5, 0.5, 0, 1);
      world.endShape();

      //backside
      world.pushMatrix();
      world.rotateX(radians(-90));
      world.beginShape(QUADS);
      world.vertex(-0.5, 0.5, -0.5, 0, 0);
      world.vertex(0.5, 0.5, -0.5, 1, 0);
      world.vertex(0.5, 0.50, 0.5, 1, 1);
      world.vertex(-0.5, 0.5, 0.5, 0, 1);
      world.endShape();
      world.popMatrix();

      //leftside
      world.pushMatrix();
      world.rotateX(radians(-90));
      world.rotateZ(radians(90));
      world.beginShape(QUADS);
      world.vertex(-0.5, 0.5, -0.5, 0, 0);
      world.vertex(0.5, 0.5, -0.5, 1, 0);
      world.vertex(0.5, 0.50, 0.5, 1, 1);
      world.vertex(-0.5, 0.5, 0.5, 0, 1);
      world.endShape();
      world.popMatrix();

      //frontside
      world.pushMatrix();
      world.rotateX(radians(-90));
      world.rotateZ(radians(-180));
      world.beginShape(QUADS);
      world.vertex(-0.5, 0.5, -0.5, 0, 0);
      world.vertex(0.5, 0.5, -0.5, 1, 0);
      world.vertex(0.5, 0.50, 0.5, 1, 1);
      world.vertex(-0.5, 0.5, 0.5, 0, 1);
      world.endShape();
      world.popMatrix();

      //rightside
      world.pushMatrix();
      world.rotateX(radians(-90));
      world.rotateZ(radians(-90));
      world.beginShape(QUADS);
      world.vertex(-0.5, 0.5, -0.5, 0, 0);
      world.vertex(0.5, 0.5, -0.5, 1, 0);
      world.vertex(0.5, 0.50, 0.5, 1, 1);
      world.vertex(-0.5, 0.5, 0.5, 0, 1);
      world.endShape();
      world.popMatrix();

      //bottom
      world.beginShape(QUADS);
      world.vertex(-0.5, 0.5, -0.5, 0, 0);
      world.vertex(0.5, 0.5, -0.5, 1, 0);
      world.vertex(0.5, 0.50, 0.5, 1, 1);
      world.vertex(-0.5, 0.5, 0.5, 0, 1);
      world.vertex(0, 1, 0, 0, 0);
      world.endShape();
      world.popMatrix();
    }
  }
}

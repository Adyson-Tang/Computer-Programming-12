void ball(float x, float y, float z, color c, float size) {
 pushMatrix();
  translate(x, y, z);

  rotateX(rotX);
  rotateY(rotY);
  noFill();
  stroke(c);

  sphere(size);
  popMatrix(); 
}

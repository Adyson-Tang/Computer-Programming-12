void cube(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);

  rotateX(rotX);
  rotateY(rotY);
  fill(c);
  stroke(#000000);

  box(size);
  popMatrix();
}

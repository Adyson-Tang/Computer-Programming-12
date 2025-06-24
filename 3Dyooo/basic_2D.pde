void grain() {
  //fill(#A25100);
  //circle(width/2, height/2, 100);
  colorMode(HSB, 360, 100, 100, 100);
    noStroke();
    tint(27, 63, 79, 30);
    pushMatrix();
    translate(grainX, grainY);
    rotate(grainR);
    //image(grain, 0, 0);
    noTint();
    popMatrix();
    //blendMode(ADD);
    fill(grainHue, grainSat, grainBri, grainOpa);
    rect(0, 0, width, height);
    //blendMode(BLEND);

}
void regenGrain() {
  //int 
  //grainR = random(0, 2*PI);
  grainHue = 30;
  grainSat = 80;
  grainBri = 60;
  grainOpa = 25;
  //grainX = random(width/2-100, width/2 + 100);
  //grainY = random(height/2 - 100, height/2 + 100);
  //grainSize = 4;
}

void generateGrain() {
  //HUD.clear(); // clears with transparent background
  HUD.beginDraw();
  HUD.clear();
  HUD.noStroke();

  // Draw lots of semi-transparent random noise dots
  for (int i = 0; i < width; i += 10) {
    float x = i;
    for (int e = 0; e < height; e += 10) {
     float y = e;
    float h = random(0, 360); // light gray
    float s = random(0, 20);
    float b = random(0, 100);
    float a = random(4, 30);  // transparency
    HUD.fill(h, s, b, a);
    HUD.rect(x, y, 10, 10);
  }
  }

  HUD.endDraw();
}

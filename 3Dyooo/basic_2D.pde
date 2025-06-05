void grain() {
  //fill(#A25100);
  //circle(width/2, height/2, 100);
  colorMode(HSB, 360, 100, 100, 100);
    noStroke();
    tint(27, 63, 79, 30);
    pushMatrix();
    translate(grainX, grainY);
    rotate(grainR);
    image(grain, 0, 0);
    noTint();
    popMatrix();
    fill(grainHue, grainSat, grainBri, grainOpa);
    rect(0, 0, width, height);

}
void regenGrain() {
  grainR = random(0, 2*PI);
  grainHue = 30;
  grainSat = 70;
  grainBri = 85;
  grainOpa = 40;
  grainX = random(width/2-100, width/2 + 100);
  grainY = random(height/2 - 100, height/2 + 100);
  grainSize = 4;
}

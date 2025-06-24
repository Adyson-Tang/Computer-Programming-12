

void drawFence() {
  PVector[] positions = new PVector[numPosts];

  // Draw posts and store their positions
  for (int i = 0; i < numPosts; i++) {
    float angle = TWO_PI / numPosts * i;
    float x = cos(angle) * size;
    float z = sin(angle) * size;
    positions[i] = new PVector(x, 0, z);

    world.pushMatrix();
    world.translate(x, -postHeight/2, z);
    world.rotateY(angle); // make each post face outward
    world.fill(white);
    world.emissive(white);
    world.box(postWidth, postHeight, postWidth);
    world.popMatrix();
  }

  // Draw horizontal bars between each pair of posts
  for (int i = 0; i < numPosts; i++) {
    PVector p1 = positions[i];
    PVector p2 = positions[(i + 1) % numPosts]; // wrap around

    PVector mid = PVector.add(p1, p2).mult(0.5);

    float angle = -atan2(p2.z - p1.z, p2.x - p1.x);

    float dist = PVector.dist(p1, p2);

    // Draw the bar
    world.pushMatrix();
    world.translate(mid.x, -postHeight/3, mid.z); // slightly lower than top
    world.rotateY(angle);
    world.fill(120, 60, 0);
    world.box(dist, postWidth, postWidth);
    world.popMatrix();
    
    world.pushMatrix();
    world.translate(mid.x, -postHeight/3 * 2, mid.z); // slightly lower than top
    world.rotateY(angle);
    world.fill(120, 60, 0);
    world.box(dist, postWidth, postWidth);
    world.popMatrix();
  }
    world.emissive(#000000);
}

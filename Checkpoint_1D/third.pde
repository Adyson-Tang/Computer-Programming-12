void third () {
  background(#000000);
  if (xthird <= width) {
    
    lineofCircles(xthird);
    xthird--;
  }
  if (xthird <= 0) xthird = width;
  //biggerTri(100, 200);
  //buttonRight();
  //buttonLeft();
  //while (y < height) {
  //  while (x < width) {
  //     biggerTri();
  //     x = x + 
  //  }
  //}
}

void lineofCircles (int x) {
 pushMatrix();
 translate(x, 0);
 int xc = width;
 int yc = 0;
 color c = #00FF00;
 while (yc < height + 40) {
   if (xc%10 == 0) {
     c = #FF0000;
   } else {
     c = #00FF00;
   }
   circles(c, xc, yc);
   xc = xc - 5;
   yc = yc + 5;
 }
 popMatrix();
}

void circles (color c, int x, int y) {
  fill (c);
  circle (x, y, 8);
}


//void biggerTri(int x, int y) {
//  pushMatrix();
//  translate(x, y);
//  int tri = 0;
//  float r = 0;
//  pushMatrix();
//  while (tri < 6) {
//    rotate(r);
//    longerTri();
//    mainTri();
//    tri++;
//    r = r + (1/6 * PI);
//  }
//  popMatrix();
//  popMatrix();
//}

//void mainTri() {
//  stroke (#000000);
//  fill(#000000, 0);
//  line(0, 0, 0, -20);
//}

//void longerTri() {
//  rotate(1/6*PI);
//  stroke (#000000);
//  fill(#000000, 0);
//  line(0, 0, 0, 34.6);
//}

boolean canMoveForward() {
  float fwdx, fwdz;
  int mapx, mapy;
  
  
  
  fwdx = eyeX + cos(leftRightHeadAngle)*150;
  //fwdy = eyeY;
  fwdz = eyeZ + sin(leftRightHeadAngle)*150;

  mapx = int(fwdx + 2000) / gridSize;
  mapy = int(fwdz + 2000) / gridSize;
  
  if (map.get(mapx, mapy) == white) {
    //println(eyeX + " " + eyeZ);
   return true; 
  }else return false;
}

boolean canMoveBack() {
   float bckx, bcky;
  int mapx, mapy;
  
  
  
  bckx = eyeX - cos(leftRightHeadAngle)*150;
  //fwdy = eyeY;
  bcky = eyeZ - sin(leftRightHeadAngle)*150;

  mapx = int(bckx + 2000) / gridSize;
  mapy = int(bcky + 2000) / gridSize;
  
  if (map.get(mapx, mapy) == white) {
    //println(eyeX + " " + eyeZ);
   return true; 
  }else return false;
}

boolean canMoveLeft() {
   float rghtx, rghty;
  int mapx, mapy;
  
  
  
  rghtx = eyeX - cos(leftRightHeadAngle + PI/2)*150;
  //eyeX - cos(leftRightHeadAngle + PI/2)*10;
    //eyeZ = eyeZ - sin(leftRightHeadAngle + PI/2)*10;
  //fwdy = eyeY;
  rghty = eyeZ - sin(leftRightHeadAngle + PI/2)*150;

  mapx = int(rghtx + 2000) / gridSize;
  mapy = int(rghty + 2000) / gridSize;
  
  if (map.get(mapx, mapy) == white) {
    //println(eyeX + " " + eyeZ);
   return true; 
  }else return false;
}

boolean canMoveRight() {
   float rghtx, rghty;
  int mapx, mapy;
  
  
  
  rghtx = eyeX - cos(leftRightHeadAngle - PI/2)*150;
  //eyeX - cos(leftRightHeadAngle + PI/2)*10;
    //eyeZ = eyeZ - sin(leftRightHeadAngle + PI/2)*10;
  //fwdy = eyeY;
  rghty = eyeZ - sin(leftRightHeadAngle - PI/2)*150;

  mapx = int(rghtx + 2000) / gridSize;
  mapy = int(rghty + 2000) / gridSize;
  
  if (map.get(mapx, mapy) == white) {
    //println(eyeX + " " + eyeZ);
   return true; 
  }else return false;
}

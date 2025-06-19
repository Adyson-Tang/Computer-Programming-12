void general() {
  for (int e = 0; e < branches.size(); e++) {
    GameObject objBranch = branches.get(e);

    //work here!!!!!!!!
    if (fkey && dist(objBranch.location.x, objBranch.location.y, objBranch.location.z, eyeX, objBranch.location.y, eyeZ) <= 300 && !pickedup) {

      hold--;
    }
    if (hold <= 0) {
      branches.remove(e);
      //branches.get(e).location = new PVector(eyeX - 200, eyeY + 20, eyeZ -50);
      e--;
      pickedup = true;
      hold = 20;
    }
  }
  if (pickedup) {
   held.location = new PVector(focusX + 100, focusY, focusZ - sin(leftRightHeadAngle)*10);
   held.r = -leftRightHeadAngle;
   held.show();
  }
  if (clicked && pickedup) {
    //println("L");
    throwable.add(new ball());
    clicked = false;
    pickedup = false;
    hold = 20;
  }
}

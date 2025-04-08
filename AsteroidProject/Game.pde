void game () {
  background(#000000);


  for (int i = 0; i < objects.size(); i++) {
    objects.get(i).act();
    objects.get(i).show();
    if (objects.get(i).lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
}

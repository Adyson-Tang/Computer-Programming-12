Gif testone, testwo;

void setup () {
  background(#60A8DE);
  size(500, 500);
  testone = new Gif("frame_0", "_delay-0.04s.png", 14, 20, 0, 0, width, height);
  testwo = new Gif();
}
void draw () {
  testone.show();
}

class Gif {
  //instance variables
  String first;
  String second;
  int numFrames, speed, x, y, w, h;
  int num;
  PImage[] gif;
  int currentFrame;

  Gif () {
  }

  Gif (String _first, String _second, int _numFrames, int _speed, int _x, int _y, int _w, int _h) {
    first = _first;
    second = _second;
    numFrames = _numFrames;
    speed = _speed;
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    currentFrame = 0;
    gif = new PImage [_numFrames] ;
    int i = 0;
    while (i < _numFrames) {
      gif[i] = loadImage(_first + i + _second);
      i++;
    }
  }
  void show () {
    frameRate(speed);
    background(#60A8DE);
    if (gif[currentFrame] != null) {
      image(gif[currentFrame], x, y, w, h);
    }
    currentFrame++;
    if (currentFrame == numFrames) {
     currentFrame = 0; 
    }
  }
  //methods
}
